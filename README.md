## Scope
This repo covers all projects, tasks, and troubleshooting completed in preparation for obtaining the KCNA, demonstrating both hands-on Kubernetes skills and practical knowledge.

## Environment
- Docker: 28.3.3
- GCP Compute Engine, Cloud Storage
- Istio Demo Profile: 1.27.0
- kubectl: 1.33.4
- Minikube: v1.33.1
- Minikube: v1.33.1
- Terraform: v1.13.1
- Ubuntu 24.0.3 LTS
- Visual Studio Code: v1.103.1
- YAML 

```
├── README.md
├── Screenshots
│   ├── Deployments/
│   ├── Docker/
│   ├── GCP/
│   ├── Istio/
│   ├── Minikube/
│   ├── Namespaces/
│   ├── Networking/
│   ├── Pods/
│   ├── ReplicaSets/
│   ├── Security/
│   └── ServiceAccounts/
├── Manifests 
├── Deployments
│   ├── Manifests
│   └── Testing, scale up, scale down, rollouts and rollbacks
├── Docker
│   ├── Installation
│   └── Version
├── GCP
│   ├── Bucket and VM provisioning; VM network settings tuning
│   └── Install and validate Terraform
├── Istio
│   ├── Installation
│   ├── Version
│   └── Install, test, validate and cleanup Bookclub application
├── Minikube
│   ├── Installation
│   ├── Create, validate, destroy
│   ├── Install, test and validate kubectl
│   ├── Provision external load balancer to externally expose Istio Bookclub application traffic
│   └── Troubleshooting
├── Namespaces
│   ├── Manifests
│   ├── Create namespace
│   └── Validate taints
├── Networking
│   └── Troubleshooting
├── Pods 
│   ├── Pods
│   ├── Manifests
│   ├── Troubleshooting
│   ├── Additional pod creation and api-resources validation
│   └── Manifest pod creation
├── ReplicaSets
│   ├── Manifests
│   └── Pods 
├── Security
│   └── Certificates
└── ServiceAccounts
│   ├── Manifest creation
│   ├── Attach to pods
│   └── Troubleshooting
```
## Deployments
- 2025-08-17 Create new deployment manifest, create the deployment, validate the pod status.
  ![Dep1-1](Deployments/Dep1-1.jpg)
- 2025-08-17 Validate the details of the newly created deployment.
  ![Dep1-2](Deployments/Dep1-2.jpg)
- 2025-08-17 Validate replicas are auto-scaling to the correct amount as intended per deployment specifications.
  ![Dep1-3](Deployments/Dep1-3.jpg)
- 2025-08-17 Validate all components of the new deployment are present, running, and in the intended state.
  ![Dep1-4](Deployments/Dep1-4.jpg)
- 2025-08-17 Delete the current deployment, scale up replicas to desired count, create a new deployment, validate both the replica count and deployment health.
  ![Dep1-5](Deployments/Dep1-5.jpg)
- 2025-08-17 Delete the current deployment, create and rollout a new deployment, validate 6/6 pods are up and healthy.
  ![Dep1-6](Deployments/Dep1-6.jpg)
- 2025-08-17 Create and annotate new deployment, roll it out, check the history and confirm the change-cause annotation is logged.
  ![Dep1-7](Deployments/Dep1-7.jpg)
- 2025-08-17 Validate the change-cause is annotated when describing the deployment.
  ![Dep1-8](Deployments/Dep1-8.jpg)
- 2025-08-17 Update the deployment manifest to a different image version, annotate the change-cause, rollout the deployment, then validate the deployment history.  
  ![Dep1-9](Deployments/Dep1-9.jpg)
- 2025-08-17 Validate the scaling of replicas in the deployment manifest.
  ![Dep1-10](Deployments/Dep1-10.jpg)
- 2025-08-17 Downgrade to version 3.21, validate this failed, rollback to version 3.22, validate change-cause annotations, validate the deployment, validate the number of pods and their health.
  ![Dep1-11](Deployments/Dep1-11.jpg)
- 2025-08-19 Update the deployment manifest with an image version that does not exist, confirm the rollout produces an error, confirm the number of pods up is 6 as expected and the other 3 are in a broken state due to trying to pull an image version that does not exist off DockerHub.
  ![Dep1-12](Deployments/Dep1-12.jpg)
- 2025-08-19 Rollback deployment, confirm the pods terminated and the correct amount of replicas are now running.
  ![Dep1-13](Deployments/Dep1-13.jpg)
- 2025-08-19 Validate the image version has been rolled back to the desired version.
  ![Dep1-14](Deployments/Dep1-14.jpg)
- 2025-08-19 Validate the replica count is correct by describing the deployment.
  ![Dep1-15](Deployments/Dep1-15.jpg)

## Docker
- 2025-08-13 Install Docker and Launch Hello World container.
  ![Doc1-1](Docker/Doc1-1.jpg)
- 2025-08-13 Validate locally installed version.
  ![Doc1-2](Docker/Doc1-2.jpg)

## GCP
- 2025-08-29 Create storage buckets in GCP project for compute VMs, prometheus monitoring/observability and kubernetes.
  ![gcp1-1](GCP/gcp1-1.jpg)
- 2025-08-29 Create primary VM in GCP project to provision worker VMs with terraform.
  ![gcp1-2](GCP/gcp1-2.jpg)
- 2025-08-29 Create RSA keypair on main workstation to vacilitate SSH RSA authentication to primary GCP VM.
  ![gcp1-3](GCP/gcp1-3.jpg)
- 2025-08-29 Add public key to primary GCP VM then validate SSH authentication from main workstation.
  ![gcp1-4](GCP/gcp1-4.jpg)
- 2025-08-29 Install terraform and validate on primary GCP VM.
  ![gcp1-5](GCP/gcp1-5.jpg)
- 2025-08-29 Create bash script on primary workstation to facilitate faster SSH authentication to primary GCP VM.
  ![gcp1-6](GCP/gcp1-6.jpg)
- 2025-08-29 Change primary terraform GCP VM IP address type to standard ephemeral as well as network type to standard in GCP compute.
  ![gcp1-7](GCP/gcp1-7.jpg)
- 2025-08-29 Install and validate the gcloud shell on main workspace.
  ![gcp1-8](GCP/gcp1-8.jpg)

## Istio
- 2025-08-24 Install Istio with demo profile, then validate the installation stability.
  ![IS1-1](Istio/IS1-1.jpg)
- 2025-08-13 Validate locally installed Istio version.
  ![IS1-2](Istio/IS1-2.jpg)
- 2025-08-29 Install Bookclub app in Istio default namespace with demo profile, validate services and pods are running.
  ![IS1-3](Istio/IS1-3.jpg)
- 2025-08-29 Validate Bookclub app in Istion default namepace is accepting HHTP requests served up by praqma pod utilizing curl. 
  ![IS1-4](Istio/IS1-4.jpg)
- 2025-08-29 Create gateway and virtual networking services in Istio default namespace, confirm the gateway is up, export the INGRESS_NAME var, validate the gateway external IP has been created and is available, export the INGRESS_PORT, SECURE_INGRESS_PORT and TCP_INGRESS_PORT variables.
  ![IS1-5](Istio/IS1-5.jpg)
- 2025-08-29 Validate the Bookclub app is accesible via CURL in the default Istio namespace.
  ![IS1-6](Istio/IS1-6.jpg)
- 2025-08-29 Validate both the load balancer external IP & internal cluster IPs have been provisioned and are available, confirm the $GATEWAY_URL variable IP via echo matches the external IP of the load balancer.
  ![IS1-7](Istio/IS1-7.jpg)
- 2025-08-29 Validate the Bookclub app IP has been exposed externally and is reachable via a browser.
  ![IS1-8](Istio/IS1-8.jpg)
- 2025-08-29 Validate the Bookclub app is externally exposed and is serving up round robin reviews as expected from the application running in the default Istio namespace.
  ![IS1-9](Istio/IS1-9.jpg)
- 2025-08-29 Cleanup and shutdown the Bookclub application running in the default Istio namespace.
  ![IS1-10](Istio/IS1-10.jpg)

## Minikube
- 2025-08-12 Install Minikube.
  ![MK1-1](Minikube/MK1-1.jpg)
- 2025-08-12 Start cluster and Minikube version validation.
  ![MK1-2](Minikube/MK1-2.jpg)
- 2025-08-12 Validate the cluster is running, stop the cluster, then delete.
  ![MK1-3](Minikube/MK1-3.jpg)
- 2025-08-14 Install kubectl, start the cluster, validate cluster info, validate kubectl version.
  ![MK1-4](Minikube/MK1-4.jpg)
- 2025-08-16 Determined Minikube is not launching because it is not started, and when it is starting it is starting with too much memory allocated.
  ![MK1-5](Minikube/MK1-5.jpg)
- 2025-08-16 Fix Minikube not starting, reduce memory allocation create pod, create nginx pod.
  ![MK1-6](Minikube/MK1-6.jpg)
- 2025-08-29 Start and validate external load balancer in minikube and validate running.
  ![MK1-7](Minikube/MK1-7.jpg)

## Namespaces 
- 2025-08-19 Create namespace manifest then create first namespace.
  ![Nst1-1](Namespaces/Nst1-1.jpg)
- 2025-08-19 Create namespace with kubectl command.
  ![Nst1-2](Namespaces/Nst1-2.jpg)
- 2025-08-19 Check if any taints are currently set on the node.
  ![Nst1-3](Namespaces/Nst1-3.jpg)

## Networking
- 2025-08-24 TROUBLESHOOTING: Create network policy manifest, apply to node, identify and correct JSON error in manifest, apply and validate applied to pod.
  ![Net1-1](Networking/Net1-1.jpg)  

## Pods
- 2025-08-16 Validate running pods on the node and then review pod details.
  ![Pod1-1](Pods/Pod1-1.jpg)
- 2025-08-16 Delete the pod and validate no longer running on the node.
  ![Pod1-2](Pods/Pod1-2.jpg)
- 2025-08-16 Create the manifest then validate both spacing and contents are correct.
  ![Pod1-3](Pods/Pod1-3.jpg)
- 2025-08-16 TROUBLESHOOTING: Pod not starting due to a crash loop.
  ![Pod1-4](Pods/Pod1-4.jpg)
- 2025-08-16 TROUBLESHOOTING: The wrong image is defined in the pod manifest.
  ![Pod1-5](Pods/Pod1-5.jpg)
- 2025-08-16 TROUBLESHOOTING: The incorrect image version is defined in the pod manifest.
  ![Pod1-6](Pods/Pod1-6.jpg)
- 2025-08-16 Describe running pods and review applicable details, specifically start process for all three.
  ![Pod1-7](Pods/Pod1-7.jpg)
- 2025-08-16 Create a manifest for all three pods, start them, validate 3/3 are now running on the node.
  ![Pod1-8](Pods/Pod1-8.jpg)
- 2025-08-16 Delete all three pods then validate they are gone on the node.
  ![Pod1-9](Pods/Pod1-9.jpg)
- 2025-08-23 TROUBLESHOOTING: Pod won't create due to the image name not matching the correct vernacular that is on DockerHub.
  ![Pod1-10](Pods/Pod1-10.jpg)
- 2025-08-23 TROUBLESHOOTING: The Prometheus pod will not start, found that the image in the manifest was incorrect. Deleted the pod.
  ![Pod1-11](Pods/Pod1-11.jpg)
- 2025-08-23 Validating all available api-resources on the node.
  ![Pod1-12](Pods/Pod1-12.jpg)
- 2025-08-29 Write manifest for praqma pod, start pod, validate running.
  ![Pod1-13](Pods/Pod1-13.jpg)

## ReplicaSets
- 2025-08-17 ReplicaSet manifest created in Visual Studio Code, validate accessible through bash shell locally.
  ![RS1-1](ReplicaSets/RS1-1.jpg)
- 2025-08-17 Create ReplicaSet manifest in bash, then validate the correct number of pods are started running in a healthy state.
  ![RS1-2](ReplicaSets/RS1-2.jpg)
- 2025-08-17 Create new pod manifest in Visual Studio Code, validate available in bash, to be used with Replicaset testing.
  ![RS1-3](ReplicaSets/RS1-3.jpg)
- 2025-08-17 Confirm correct number of pods defined in the Replicaset are running.
  ![RS1-4](ReplicaSets/RS1-4.jpg)
- 2025-08-17 Delete a pod, then validate the Replicaset created and started new pod, validate 3/3 are running, so HA is functioning as intended.
  ![RS1-5](ReplicaSets/RS1-5.jpg)
- 2025-08-17 Check the details of the Replicaset, specifically checking for both replica and pod counts.  
  ![RS1-6](ReplicaSets/RS1-6.jpg)
- 2025-08-17 Edit the Replicaset manifest, scale the number of replicas to 4, confirm the fourth pod has been started, and is now running.  
  ![RS1-7](ReplicaSets/RS1-7.jpg)
- 2025-08-17 Scale down the number of replicas to 2, without editing the manifest (using CLI syntax), then validate that only two pods are running.  
  ![RS1-8](ReplicaSets/RS1-8.jpg)
  
## Security
- 2025-08-21 Create the root certificate.
  ![Sec1-1](Security/Sec1-1.jpg)
- 2025-08-21 Create and sign an administrator certificate.
  ![Sec1-2](Security/Sec1-2.jpg)
- 2025-08-21 Create and sign the system masters certificate.
  ![Sec1-3](Security/Sec1-3.jpg)
- 2025-08-21 Create and sign certificates for the kube-scheduler, kube-controller-manager and kube-proxy services.
  ![Sec1-4](Security/Sec1-4.jpg)

## ServiceAccounts
- 2025-08-21 Create a service account, validate on the node, describe the service account.
  ![SA1-1](ServiceAccounts/SA1-1.jpg)
- 2025-08-21 Describe a pod with an attached service account.
  ![SA1-2](ServiceAccounts/SA1-2.jpg)
- 2025-08-23 Grab Java Web Token (JWT) for the Prometheus pod.
  ![SA1-3](ServiceAccounts/SA1-3.jpg)
- 2025-08-23 Install jq locally to view the decoded token JSON, view both the exp and iat values in the token, calculate to confirm the token expiration is set for one year. Both are set in seconds and the formula for determining the token TTL is exp - iat = token expiration date.
  ![SA1-4](ServiceAccounts/SA1-4.jpg)
- 2025-08-23 TROUBLESHOOTING: The manifest is not creating either the serviceaccount or the pod, Visual Studio Code (VSC) is not updating the manifest on the node. Updated the manifest on the node then deleted the pod, re-applied the manifest, validated each have now been created.
  ![SA1-5](ServiceAccounts/SA1-5.jpg)
