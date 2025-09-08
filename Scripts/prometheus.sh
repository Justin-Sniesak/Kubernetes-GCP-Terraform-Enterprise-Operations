#! /bin/bash

#This starts the DNS service manifest for the nodeexporter pod which will dynamically map the IP to the Prometheus pod once that is started
echo -e "\e[1mCreating the nodexporter DNS service\e[0m"
kubectl apply -f /home/justinsniesak/Kubernetes/Services/nodeexporterdns.yaml -n monitoring

#This starts the node-exporter pod in the monitoring namespace which is needed to provide specific pod metrics to be ingested by Prometheus
echo -e "\e[1mCreating the node-exporter pod\e[0m"
kubectl apply -f /home/justinsniesak/Kubernetes/Pods/nodeexporter.yaml -n monitoring

#This applies the Prometheus pod/service manifest, starting each
echo -e "\e[1mApplying the Prometheus manifest to the monitoring namespace, starting the pod and service\e[0m"
kubectl apply -f /home/justinsniesak/Kubernetes/Pods/prometheus.yaml -n monitoring

#This returns the pod, configmap and service status in the monitoring namespace for confirmation both have been started and are ready
echo -e "\e[1mReturning the pods, configmap and services running in the monitoring namespace along with their status, as well as the pods in the development namespace\e[0m"
kubectl get pods -n monitoring
kubectl get services -n monitoring
kubectl get configmap -n monitoring

#This sleeps the script for 20 seconds to allow time for the pod to start, at which point the tunnel will be opened and the GUI will open in your browser
echo -e "\e[1mSleep script for 20 seconds\e[0m"
sleep 20

#This starts port forwarding, and sends the tunnel to the background
echo -e "\e[1mStarts the tunnel and opening the internally exposed GUI while sending the service to the background\e[0m"
minikube service prometheus-service -n monitoring &

#This outputs all available nodes along with their external IPs to the terminal
echo -e "\e[1mThis returns all nodes and their IP addresess currently available\e[0m"
kubectl get nodes -o wide -n all