## Scope
This repo covers all projects, tasks, and troubleshooting completed in preparation for obtaining the KCNA, demonstrating both hands-on Kubernetes skills and practical knowledge.

## Environment
- Docker: 28.3.3
- GCP Compute Engine, Cloud Storage, Billing, gcloud, IAM
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
│   ├── ServiceAccounts/
│   └── Storage/
│   └── Terraform/
├── Manifests 
├── Deployments
│   ├── Manifests
│   └── Testing, scale up, scale down, rollouts and rollbacks
├── Docker
│   ├── Installation
│   ├── Persistent Volume creation; pod administration and data management
│   └── Version
├── GCP
│   ├── Bucket and VM provisioning; VM network settings tuning
│   ├── VM primary disk adhoc snapshots and scheduled snapshots
│   ├── Review and analyze spend for the month in Billing
│   ├── Additional review by project and service as well as review of Billing dashboard, including filtering by SKU
│   ├── Generate billing reports and set alerting thresholds - configure alerting methodology
│   ├── Configure authentication to GCP project from workstation via gcloud
│   └── Multiple gserviceaccount IAM binding administration and bucket validation via gcloud
├── Istio
│   ├── Installation
│   ├── Version
│   └── Install, test, validate and cleanup Bookclub application
├── Minikube
│   ├── Installation
│   ├── Create, validate, destroy
│   ├── Install, test and validate kubectl
│   ├── Provision external load balancer to externally expose Istio Bookclub application traffic
│   ├── Filesystem creation and validation
│   └── Troubleshooting
├── Namespaces
│   ├── Manifests
│   ├── Namespace creation and management
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
├── ServiceAccounts
│   ├── Manifest creation
│   ├── Attach to pods
│   └── Troubleshooting
├── Storage
│   ├── Ephemeral Volume testing and validation
│   ├── PersistentVolume (PV) creation and validation
│   ├── PersistentVolumeClaim (PVC) creation and validation
│   ├── PersistentVolume (PV) and PersistentVolumeClaim (PVC) creation and validation
│   ├── Validate PersistentVolume (PV) and PersistentVolumeClaim (PVC) bind status across multiple namespaces
│   ├── Multi-pod PersistentVolume (PV) and PersistentVolumeClaim (PVC) creation and validation
│   └── Storageclass creation and validation
├── Terraform
│   ├── Install and validate Terraform
│   ├── Create compute manifest for declarative management of compute resources in GCP project
│   └── Declarativly provision, validate and destroy additional compute resources in GCP project
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
  ![doc1-1](Docker/doc1-1.jpg)
- 2025-08-13 Validate locally installed version.
  ![doc1-2](Docker/doc1-2.jpg)
- 2025-09-01 Create local volume on node then validate available.
  ![doc1-3](Docker/doc1-3.jpg)
- 2025-09-01 Start container with attached local volume, validate pod is writing to attached volume, connect into pod via exec -it, validate data is being written to volume from pod.
  ![doc1-4](Docker/doc1-4.jpg)

## GCP
- 2025-08-29 Create storage buckets in GCP project for compute VMs, prometheus monitoring/observability and kubernetes.
  ![gcp1-1](GCP/gcp1-1.jpg)
- 2025-08-29 Create primary VM in GCP project to provision worker VMs with terraform.
  ![gcp1-2](GCP/gcp1-2.jpg)
- 2025-08-29 Create RSA keypair on main workstation to vacilitate SSH RSA authentication to primary GCP VM.
  ![gcp1-3](GCP/gcp1-3.jpg)
- 2025-08-29 Add public key to primary GCP VM then validate SSH authentication from main workstation.
  ![gcp1-4](GCP/gcp1-4.jpg)
- 2025-08-29 Create bash script on primary workstation to facilitate faster SSH authentication to primary GCP VM.
  ![gcp1-5](GCP/gcp1-5.jpg)
- 2025-08-29 Change primary terraform GCP VM IP address type to standard ephemeral as well as network type to standard in GCP compute.
  ![gcp1-6](GCP/gcp1-6.jpg)
- 2025-08-29 Install and validate the gcloud shell on main workspace.
  ![gcp1-7](GCP/gcp1-7.jpg)
- 2025-09-02 Review and analyze overall spend for the month in Billing.
  ![gcp1-11](GCP/gcp1-11.jpg)
- 2025-09-02 Additional review and analysis of overall spend for the month by project and service in GCP.
  ![gcp1-12](GCP/gcp1-12.jpg)
- 2025-09-02 Additional review of Billing dashboard.
  ![gcp1-13](GCP/gcp1-13.jpg)
- 2025-09-02 Review of Billing dashboard, filtering by SKU.
  ![gcp1-14](GCP/gcp1-14.jpg)
- 2025-09-02 Generate billing report.
  ![gcp1-15](GCP/gcp1-15.jpg)
- 2025-09-02 Set alerting thresholds for budgeting in Billing.
  ![gcp1-16](GCP/gcp1-16.jpg) 
- 2025-08-29 Assign primary VM persistent disk to snapshot schedule.
  ![gcp1-8](GCP/gcp1-8.jpg)
- 2025-09-01 Validate primary disk for terraform bastion host has been assigned to VM snapshot schedule, validate run times.
  ![gcp1-9](GCP/gcp1-9.jpg)
- 2025-09-01 Create one off snapshot for primary disk or bastion host/terraform VM and validate it succesfully completed.
  ![gcp1-10](GCP/gcp1-10.jpg)
- 2025-09-02 Enable authentication to GCP project using gcloud from primary workstation.
  ![gcp1-17](GCP/gcp1-17.jpg)
- 2025-09-02 Create gserviceaccount, assign storage admin iam-account-binding via gcloud.
  ![gcp1-18](GCP/gcp1-18.jpg)
- 2025-09-02 Validate current buckets in cloud storage are accesible via gcloud from minikube.
  ![gcp1-19](GCP/gcp1-19.jpg)
- 2025-09-02 Create multiple gserviceaccounts, assign storage admin iam-account-binding via gcloud.
  ![gcp1-20](GCP/gcp1-20.jpg)

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
  ![mk1-1](Minikube/mk1-1.jpg)
- 2025-08-12 Start cluster and Minikube version validation.
  ![mk1-2](Minikube/mk1-2.jpg)
- 2025-08-12 Validate the cluster is running, stop the cluster, then delete.
  ![mk1-3](Minikube/mk1-3.jpg)
- 2025-08-14 Install kubectl, start the cluster, validate cluster info, validate kubectl version.
  ![mk1-4](Minikube/mk1-4.jpg)
- 2025-08-16 Determined Minikube is not launching because it is not started, and when it is starting it is starting with too much memory allocated.
  ![mk1-5](Minikube/mk1-5.jpg)
- 2025-08-16 Fix Minikube not starting, reduce memory allocation create pod, create nginx pod.
  ![mk1-6](Minikube/mk1-6.jpg)
- 2025-08-29 Start and validate external load balancer in minikube and validate running.
  ![mk1-7](Minikube/mk1-7.jpg)
- 2025-09-02 Create and validate filesystem on the Minikube VM.
  ![mk1-8](Minikube/mk1-8.jpg)

## Namespaces 
- 2025-08-19 Create namespace manifest then create first namespace.
  ![ns1-1](Namespaces/ns1-1.jpg)
- 2025-08-19 Create namespace with kubectl command.
  ![ns1-2](Namespaces/ns1-2.jpg)
- 2025-08-19 Check if any taints are currently set on the node.
  ![ns1-3](Namespaces/ns1-3.jpg)
- 2025-09-02 Multiple namespace creation and validation
  ![ns1-4](Namespaces/ns1-4.jpg)

## Networking
- 2025-08-24 TROUBLESHOOTING: Create network policy manifest, apply to node, identify and correct JSON error in manifest, apply and validate applied to pod.
  ![Net1-1](Networking/Net1-1.jpg)  

## Pods
- 2025-08-16 Validate running pods on the node and then review pod details.
  ![pod1-1](Pods/pod1-1.jpg)
- 2025-08-16 Delete the pod and validate no longer running on the node.
  ![pod1-2](Pods/pod1-2.jpg)
- 2025-08-16 Create the manifest then validate both spacing and contents are correct.
  ![pod1-3](Pods/pod1-3.jpg)
- 2025-08-16 TROUBLESHOOTING: Pod not starting due to a crash loop.
  ![pod1-4](Pods/pod1-4.jpg)
- 2025-08-16 TROUBLESHOOTING: The wrong image is defined in the pod manifest.
  ![pod1-5](Pods/pod1-5.jpg)
- 2025-08-16 TROUBLESHOOTING: The incorrect image version is defined in the pod manifest.
  ![pod1-6](Pods/pod1-6.jpg)
- 2025-08-16 Describe running pods and review applicable details, specifically start process for all three.
  ![pod1-7](Pods/pod1-7.jpg)
- 2025-08-16 Create a manifest for all three pods, start them, validate 3/3 are now running on the node.
  ![pod1-8](Pods/pod1-8.jpg)
- 2025-08-16 Delete all three pods then validate they are gone on the node.
  ![pod1-9](Pods/pod1-9.jpg)
- 2025-08-23 TROUBLESHOOTING: Pod won't create due to the image name not matching the correct vernacular that is on DockerHub.
  ![pod1-10](Pods/pod1-10.jpg)
- 2025-08-23 TROUBLESHOOTING: The Prometheus pod will not start, found that the image in the manifest was incorrect. Deleted the pod.
  ![pod1-11](Pods/pod1-11.jpg)
- 2025-08-23 Validating all available api-resources on the node.
  ![pod1-12](Pods/pod1-12.jpg)
- 2025-08-29 Write manifest for praqma pod, start pod, validate running.
  ![pod1-13](Pods/pod1-13.jpg)
- 2025-09-01 Write manifest and create golang pod, confirm running, connect to pod (exec -it), validate data is being created in the mounted hostPath volume.
  ![pod1-14](Pods/pod1-14.jpg)
- 2025-09-01 Describe golang pod, then confirm the hostPath volume is mounted via describing the pod.
  ![pod1-15](Pods/pod1-15.jpg)
- 2025-09-02 Validate selectors are sorting pods by assigned label.
  ![pod1-16](Pods/pod1-16.jpg)

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
  ![sec1-1](Security/sec1-1.jpg)
- 2025-08-21 Create and sign an administrator certificate.
  ![sec1-2](Security/sec1-2.jpg)
- 2025-08-21 Create and sign the system masters certificate.
  ![sec1-3](Security/sec1-3.jpg)
- 2025-08-21 Create and sign certificates for the kube-scheduler, kube-controller-manager and kube-proxy services.
  ![sec1-4](Security/sec1-4.jpg)
- 2025-09-02 Create JSON keys and assign to each applicable gservice account
  ![sec1-5](Security/sec1-5.jpg)
- 2025-09-02 Create kubernetes secrets from json keys for use all three gservice accounts.
  ![sec1-6](Security/sec1-6.jpg)

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

## Storage
- 2025-09-01 Write Persistent Volume manifest for both the reddis and nginx pods, validate each has been created and review details for each via kubectl describe.
  ![stor1-1](Storage/stor1-1.jpg)
- 2025-09-01 Write manifest for both nginx and redis pods, start and validate running 2/2; facilitate understanding of the diferential between persistent volume and ephimeral storage.
  ![stor1-2](Storage/stor1-2.jpg)
- 2025-09-01 Describe the reddis pod and validate the automatically created ephimeral volume is present and mapped to the pod; further validation of the mountpoint attached to the pod.
  ![stor1-3](Storage/stor1-3.jpg)
- 2025-09-01 Describe the nginx pod and validate the automatically created ephimeral volume is present and mapped to the pod; further validation of the mountpoint attached to the pod.
  ![stor1-4](Storage/stor1-4.jpg)
- 2025-09-01 Write PersistentVolumeClaim (PVC) manifest, apply, validate bound to PersistentVolume (PV).
  ![stor1-5](Storage/stor1-5.jpg)
- 2025-09-02 Create multiple pods and associated PersistentVolumes in multiple namespaces, validate creation, ready status and namespace.
  ![stor1-6](Storage/stor1-6.jpg)
- 2025-09-02 Validate multiple PersistentVolumes (PV) and PersistentVolumeClaims (PVC) bind status across multiple namespaces.
  ![stor1-7](Storage/stor1-7.jpg)
- 2025-09-02 Create and validate Storageclass on node.
  ![stor1-8](Storage/stor1-8.jpg)

## Terraform
- 2025-08-29 Install terraform and validate on primary GCP VM.
  ![tf1-1](Terraform/tf1-1.jpg)
- 2025-09-02 Init TF - validate no issues.
  ![tf1-2](Terraform/tf1-2.jpg)
- 2025-09-02 Run TF plan against manifest and validate no issues.
  ![tf1-3](Terraform/tf1-3.jpg)
- 2025-09-02 GCP compute validation prior to compute manifest being applied.
  ![tf1-4](Terraform/tf1-4.jpg)
- 2025-09-02 Apply compute manifest using terraform, validate additional compute resources have been provisioned declarativly. 
  ![tf1-5](Terraform/tf1-5.jpg)
- 2025-09-02 Validate in additional compute resources (VMs) are present in the compute service in GCP project. 
  ![tf1-6](Terraform/tf1-6.jpg)
- 2025-09-02 Apply compute manifest using terraform, validate additional compute resources have been destroyed declarativly. 
  ![tf1-7](Terraform/tf1-7.jpg)
