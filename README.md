## Scope
This repository captures comprehensive, enterprise-grade Kubernetes and GCP operations in a hybrid on-prem and cloud schema, including provisioning, automation, and troubleshooting. It documents hands-on implementations across container orchestration, infrastructure as code, observability, security, and multi-environment cloud deployments.

## Environment
This lab was executed on a modern enterprise Kubernetes and GCP stack, including the following core tools and platforms:

Operating Systems: Ubuntu 24.04 LTS, Alipine Linux 3.22

Hypervisor: KVM 8.2.2, ProxMoxVE 9.0.3

Containerization: Docker 28.3.3

Kubernetes: kubectl 1.33.4, Minikube v1.33.1

Service Mesh: Istio 1.27.0 (demo profile)

Infrastructure as Code: Terraform v1.13.1

Cloud Platform: Google Cloud Platform (Compute Engine, Cloud Storage, IAM, Billing, gcloud CLI, Secrets Manager, Firewall)

Development Tools: Visual Studio Code v1.103.1, YAML manifests, Terraform configuation files

This environment supports end-to-end experimentation, including cluster provisioning, service deployment, monitoring, storage management, networking, and security validation across multiple namespaces and cloud resources.
```
├── README.md
├── Screenshots/                # Visual documentation of all tasks
│   ├── Deployments/
│   ├── Docker/
│   ├── GCP/
│   ├── Istio/
│   ├── Minikube/
│   ├── Namespaces/
│   ├── Networking/
│   ├── OnPremIaC/
│   ├── Pods/
│   ├── Prometheus/
│   ├── ReplicaSets/
│   ├── Security/
│   ├── ServiceAccounts/
│   ├── Scripts/
│   ├── Storage/
│   └── Terraform/
├── Manifests/                  # YAML manifests for Kubernetes resources
├── Deployments/                # Deployment manifests & testing (rollouts, scaling, rollback)
├── Docker/                     # Docker installation, container management, volumes
├── GCP/                        # GCP provisioning, storage, VM management, billing, IAM
├── Istio/                      # Service mesh setup, Bookclub demo app, gateway & virtual services
├── Minikube/                    # Local Kubernetes cluster setup, load balancer, filesystem management
├── Namespaces/                  # Namespace creation, management, and taint validation
├── Networking/                  # Network policies and troubleshooting
├── OnPremIaC/                   # OnPrem Hypervisor & VM management, configuration and troubleshooting
├── Pods/                        # Pod creation, validation, troubleshooting, volume testing
├── Prometheus/                  # Monitoring and observability solution, scrapes for pod uptime
├── ReplicaSets/                 # ReplicaSet manifests, pod scaling, HA validation
├── Security/                    # Certificates, JSON keys, Kubernetes secrets
├── ServiceAccounts/             # Service account creation, JWT retrieval, pod attachment
├── Scripts/                     # Bash scripting to automate Prometheus, Grafana and Kubernetes deployments and administration
├── Storage/                     # PersistentVolume (PV) and PersistentVolumeClaim (PVC) creation & validation
└── Terraform/                   # Terraform manifests, IaC & troubleshooting
```
## Deployments
**Summary:** Creating, updating, rolling out, scaling, and troubleshooting Kubernetes deployments. Pod lifecycle managemnent, replication, rollout strategies, annotations, and error handling.

- 2025-08-17 Create deployment manifest, deploy, and validate pod status.
  ![Dep1-1](Deployments/Dep1-1.jpg)
- 2025-08-17 Validate deployment details.
  ![Dep1-2](Deployments/Dep1-2.jpg)
- 2025-08-17 Validate auto-scaling of replicas per deployment specifications.
  ![Dep1-3](Deployments/Dep1-3.jpg)
- 2025-08-17 Confirm all components are running and in intended state.
  ![Dep1-4](Deployments/Dep1-4.jpg)
- 2025-08-17 Delete deployment, scale replicas, create new deployment, validate replicas and health.
  ![Dep1-5](Deployments/Dep1-5.jpg)
- 2025-08-17 Rollout new deployment, validate 6/6 pods are up and healthy.
  ![Dep1-6](Deployments/Dep1-6.jpg)
- 2025-08-17 Annotate deployment, roll it out, check history, confirm change-cause annotation.
  ![Dep1-7](Deployments/Dep1-7.jpg)
- 2025-08-17 Validate change-cause in deployment description.
  ![Dep1-8](Deployments/Dep1-8.jpg)
- 2025-08-17 Update deployment image, annotate change-cause, rollout, validate history.  
  ![Dep1-9](Deployments/Dep1-9.jpg)
- 2025-08-17 Validate scaling of replicas.
  ![Dep1-10](Deployments/Dep1-10.jpg)
- 2025-08-17 Downgrade deployment (fail), rollback, validate change-cause annotations and pod health.
  ![Dep1-11](Deployments/Dep1-11.jpg)
- 2025-08-19 Deploy invalid image, confirm rollout error, validate broken pods and correct replica count.
  ![Dep1-12](Deployments/Dep1-12.jpg)
- 2025-08-19 Rollback deployment, confirm pods terminated and correct replicas running.  
  ![Dep1-13](Deployments/Dep1-13.jpg)
- 2025-08-19 Validate image version rolled back.  
  ![Dep1-14](Deployments/Dep1-14.jpg)
- 2025-08-19 Confirm replica count via deployment description.
  ![Dep1-15](Deployments/Dep1-15.jpg)

## Docker
**Summary:** Installing Docker, launching containers, creating and mounting volumes, and validating persistent storage at the container level.

- 2025-08-13 Install Docker and launch Hello World container.
  ![doc1-1](Docker/doc1-1.jpg)
- 2025-08-13 Validate locally installed Docker version.
  ![doc1-2](Docker/doc1-2.jpg)
- 2025-09-01 Create local volume on node, validate availability.
  ![doc1-3](Docker/doc1-3.jpg)
- 2025-09-01 Start container with attached local volume, validate pod writing to volume, connect via exec -it, confirm data written.
  ![doc1-4](Docker/doc1-4.jpg)

## GCP
**Summary:** Provisioning compute resources and storage buckets, configuring IAM and gservice accounts, managing billing, creating snapshots, and enabling authentication from local workstation. Emphasis on cloud operations and observability.

- 2025-08-29 Create storage buckets in GCP project for compute VMs, Prometheus monitoring/observability, and Kubernetes.
  ![gcp1-1](GCP/gcp1-1.jpg)
- 2025-08-29 Create primary VM in GCP project to provision worker VMs with Terraform.
  ![gcp1-2](GCP/gcp1-2.jpg)
- 2025-08-29 Create RSA keypair on main workstation to facilitate SSH authentication to primary GCP VM.
  ![gcp1-3](GCP/gcp1-3.jpg)
- 2025-08-29 Add public key to primary GCP VM, validate SSH authentication from main workstation.
  ![gcp1-4](GCP/gcp1-4.jpg)
- 2025-08-29 Create bash script on primary workstation to facilitate faster SSH authentication to primary GCP VM.
  ![gcp1-5](GCP/gcp1-5.jpg)
- 2025-08-29 Change primary Terraform GCP VM IP type to standard ephemeral and network type to standard in GCP Compute.
  ![gcp1-6](GCP/gcp1-6.jpg)
- 2025-08-29 Install and validate the gcloud shell on main workstation.
  ![gcp1-7](GCP/gcp1-7.jpg)
- 2025-09-02 Review and analyze overall spend for the month in Billing.
  ![gcp1-11](GCP/gcp1-11.jpg)
- 2025-09-02 Additional review and analysis of spend by project and service.
  ![gcp1-12](GCP/gcp1-12.jpg)
- 2025-09-02 Review Billing dashboard.
  ![gcp1-13](GCP/gcp1-13.jpg)
- 2025-09-02 Filter Billing dashboard by SKU.
  ![gcp1-14](GCP/gcp1-14.jpg)
- 2025-09-02 Generate billing report.
  ![gcp1-15](GCP/gcp1-15.jpg)
- 2025-09-02 Set alerting thresholds for budgeting in Billing.
  ![gcp1-16](GCP/gcp1-16.jpg) 
- 2025-08-29 Assign primary VM persistent disk to snapshot schedule.
  ![gcp1-8](GCP/gcp1-8.jpg)
- 2025-09-01 Validate primary disk for Terraform bastion host assigned to snapshot schedule, confirm run times.
  ![gcp1-9](GCP/gcp1-9.jpg)
- 2025-09-01 Create one-off snapshot for primary disk/bastion host, validate success.
  ![gcp1-10](GCP/gcp1-10.jpg)
- 2025-09-02 Enable authentication to GCP project using gcloud from primary workstation.
  ![gcp1-17](GCP/gcp1-17.jpg)
- 2025-09-02 Create service account, assign Storage Admin IAM binding via gcloud.
  ![gcp1-18](GCP/gcp1-18.jpg)
- 2025-09-02 Validate current buckets in Cloud Storage accessible via gcloud from Minikube.
  ![gcp1-19](GCP/gcp1-19.jpg)
- 2025-09-02 Create multiple service accounts, assign Storage Admin IAM bindings via gcloud.
  ![gcp1-20](GCP/gcp1-20.jpg)
- 2025-09-19 Enable Secret Manager.
  ![gcp1-21](GCP/gcp1-21.jpg)
- 2025-09-19 Create compute engine service account and associated JSON key.
  ![gcp1-22](GCP/gcp1-22.jpg)
- 2025-09-19 Disable SSH access to compute engine VM and delete all SSH keys.
  ![gcp1-23](GCP/gcp1-23.jpg)
- 2025-09-19 Prevent oslogin in compute engine VM.
  ![gcp1-24](GCP/gcp1-24.jpg)
- 2025-09-19 Create a firewall rule blocking all ingress traffic on port 22 (ssh), also create network tag for compuite engine VM.
  ![gcp1-25](GCP/gcp1-25.jpg)
- 2025-09-19 Activate compute engine service account and confirm active using gcloud shell.
  ![gcp1-26](GCP/gcp1-26.jpg)
- 2025-09-19 Assign firewall tag to VM to apply rule from firewall to all ingress traffic (Block ingress port 22 traffic - SSH)
  ![gcp1-27](GCP/gcp1-27.jpg)
- 2025-09-19 Validate ingress SSH attempts in primary compute engine VM are blocked.
  ![gcp1-28](GCP/gcp1-28.jpg)
- 2025-09-19 Migrate all API keys to Secrets manager.
  ![gcp1-29](GCP/gcp1-29.jpg)

## Istio
**Summary:** Installation and validation of Istio service mesh, deploying sample applications, creating gateways, exposing services externally, and validating ingress traffic.

- 2025-08-24 Install Istio with demo profile, validate installation stability.
  ![IS1-1](Istio/IS1-1.jpg)
- 2025-08-13 Validate locally installed Istio version.
  ![IS1-2](Istio/IS1-2.jpg)
- 2025-08-29 Install Bookclub app in Istio default namespace with demo profile, validate services and pods are running.
  ![IS1-3](Istio/IS1-3.jpg)
- 2025-08-29 Validate Bookclub app in default namespace is accepting HTTP requests served by Praqma pod using curl.
  ![IS1-4](Istio/IS1-4.jpg)
- 2025-08-29 Create gateway and virtual networking services in Istio default namespace, confirm gateway is up, export INGRESS_NAME, validate external IP created, export INGRESS_PORT, SECURE_INGRESS_PORT, and TCP_INGRESS_PORT.
  ![IS1-5](Istio/IS1-5.jpg)
- 2025-08-29 Validate Bookclub app is accessible via curl in default Istio namespace.
  ![IS1-6](Istio/IS1-6.jpg)
- 2025-08-29 Validate both load balancer external IP & internal cluster IPs, confirm $GATEWAY_URL matches external IP.
  ![IS1-7](Istio/IS1-7.jpg)
- 2025-08-29 Validate Bookclub app IP exposed externally, reachable via browser.
  ![IS1-8](Istio/IS1-8.jpg)
- 2025-08-29 Validate Bookclub app is externally exposed and serving round-robin reviews from app in default Istio namespace.
  ![IS1-9](Istio/IS1-9.jpg)
- 2025-08-29 Cleanup and shutdown Bookclub application in default Istio namespace.
  ![IS1-10](Istio/IS1-10.jpg)

## Minikube
**Summary:** Local Kubernetes cluster setup, pod deployment, external load balancer provisioning, filesystem creation, and troubleshooting Minikube startup issues.

- 2025-08-12 Install Minikube.
  ![mk1-1](Minikube/mk1-1.jpg)
- 2025-08-12 Start cluster and validate Minikube version.
  ![mk1-2](Minikube/mk1-2.jpg)
- 2025-08-12 Validate cluster is running, stop cluster, then delete.
  ![mk1-3](Minikube/mk1-3.jpg)
- 2025-08-14 Install kubectl, start cluster, validate cluster info and kubectl version.
  ![mk1-4](Minikube/mk1-4.jpg)
- 2025-08-16 Identify Minikube not launching due to memory allocation; reduce memory and start cluster, create nginx pod.
  ![mk1-5](Minikube/mk1-5.jpg)
- 2025-08-16 Fix Minikube not starting, reduce memory allocation create pod, create nginx pod.
  ![mk1-6](Minikube/mk1-6.jpg)
- 2025-08-29 Start and validate external load balancer in Minikube.
  ![mk1-7](Minikube/mk1-7.jpg)
- 2025-09-02 Create and validate filesystem on Minikube VM.
  ![mk1-8](Minikube/mk1-8.jpg)

## Namespaces
**Summary:** Creating and managing Kubernetes namespaces, validating taints, and applying proper namespace scoping for resources.

- 2025-08-19: Create namespace using manifest, then create the first namespace.
  ![ns1-1](Namespaces/ns1-1.jpg)
- 2025-08-19: Create namespace directly with kubectl command.
  ![ns1-2](Namespaces/ns1-2.jpg)
- 2025-08-19: Inspect node for any existing taints.
  ![ns1-3](Namespaces/ns1-3.jpg)
- 2025-09-02: Create multiple namespaces and validate proper creation and functionality.
  ![ns1-4](Namespaces/ns1-4.jpg)

## Networking
**Summary:** Applying network policies, identifying manifest errors, and validating connectivity to pods.

- 2025-08-24: TROUBLESHOOTING: Create a network policy manifest, apply it to the node, identify and correct JSON errors in the manifest, apply changes, and validate the policy is correctly applied to the pod.
  ![Net1-1](Networking/Net1-1.jpg)  

## OnPremIaC
**Summary:** Hypervisor and VMs management and troubleshooting. RBAC administration and enforcement via API authentication, administration and troubleshooting.

- 2025-09-14: OnPrem BareMetal hypervisor preperation - validate virtualization functionality is supported by the hardware, then confirm libvirtd is running which is a pre-requisite prior to install KVM followed by the ProxMox VE hypervisor.
  ![pm1-1](OnPremIaC/pm1-1.jpg)
- 2025-09-14: Load modprobe, validate loaded and confirm nested Hypervisor virtualization is supported on hardware.  
  ![pm1-2](OnPremIaC/pm1-2.jpg)
- 2025-09-14: Install KVM on hardware which is a pre-requisite to installing the ProxMoxVE hypervisor. 
  ![pm1-3](OnPremIaC/pm1-3.jpg)
- 2025-09-14: Validate cores and threads per core hardware to ensure right-sizing of ProxMoxVE host and Alpine guests during provisioning.  
- ![pm1-4](OnPremIaC/pm1-4.jpg)
- 2025-09-14: Install ProxMoxVE Hypervisor and validate can access and authenticate into the console.  
- ![pm1-5](OnPremIaC/pm1-5.jpg)
- 2025-09-14: Post install of ProxMoxVE Hypervisor, validate GUI is up and can authenticate in.
  ![pm1-6](OnPremIaC/pm1-6.jpg)
- 2025-09-14: Install both terraform and lsb-release on ProxMoxVE hypervisor.
  ![pm1-7](OnPremIaC/pm1-7.jpg)
- 2025-09-14: Create API authentication tokens for all user/service accounts on Hypervisor, enforce expiration on each IAW regular token rotation policy.
  ![pm1-8](OnPremIaC/pm1-8.jpg)
- 2025-09-14: Create user and service accounts on ProxMox hypervisor.
  ![pm1-9](OnPremIaC/pm1-9.jpg)
- 2025-09-14: Map users and API tokens to required roles and filesystems as part of RBAC schema on hypervisor.
  ![pm1-10](OnPremIaC/pm1-10.jpg)
- 2025-09-14: Validate all VMs up and healthy on Hypervisor monitoring and observability dashboard.
  ![pm1-11](OnPremIaC/pm1-11.jpg)   

## Pods
**Summary:** Creation, management, troubleshooting, and validation of pods. Includes manifest writing, exec into containers, volume mounts, and pod lifecycle events.

- 2025-08-16: Validate running pods on the node and review pod details.
![pod1-1](Pods/pod1-1.jpg)
- 2025-08-16: Delete a pod and confirm it is no longer running on the node.
![pod1-2](Pods/pod1-2.jpg)
- 2025-08-16: Create pod manifests, validate formatting, spacing, and content correctness.
![pod1-3](Pods/pod1-3.jpg)
2025-08-16: TROUBLESHOOTING: Resolve a pod not starting due to a crash loop.
![pod1-4](Pods/pod1-4.jpg)
2025-08-16: TROUBLESHOOTING: Fix pod with the wrong image defined in the manifest.
![pod1-5](Pods/pod1-5.jpg)
2025-08-16: TROUBLESHOOTING: Correct pod with incorrect image version.
![pod1-6](Pods/pod1-6.jpg)
2025-08-16: Describe running pods and review start processes for all pods.
![pod1-7](Pods/pod1-7.jpg)
2025-08-16: Create multiple pods via manifest, start them, validate 3/3 are running.
![pod1-8](Pods/pod1-8.jpg)
2025-08-16: Delete all pods and confirm none remain on the node.
![pod1-9](Pods/pod1-9.jpg)
2025-08-23: TROUBLESHOOTING: Correct pod creation failure due to DockerHub image name mismatch.
![pod1-10](Pods/pod1-10.jpg)
2025-08-23: TROUBLESHOOTING: Resolve Prometheus pod failing to start due to incorrect image.
![pod1-11](Pods/pod1-11.jpg)
2025-08-23: Validate all available Kubernetes API resources on the node.
![pod1-12](Pods/pod1-12.jpg)
2025-08-29: Write and deploy Praqma pod manifest, validate pod is running.
![pod1-13](Pods/pod1-13.jpg)
2025-09-01: Create Golang pod from manifest, validate running state, connect via exec -it, and confirm hostPath volume is writing data.
![pod1-14](Pods/pod1-14.jpg)
2025-09-01: Describe Golang pod to confirm hostPath volume mount and configuration.
![pod1-15](Pods/pod1-15.jpg)
2025-09-02: Validate pod label selectors properly filter and sort pods by assigned labels.
![pod1-16](Pods/pod1-16.jpg)
2025-09-07: Create config map for prometheus in monitoring namespace.
![pod1-17](Pods/pod1-17.jpg)

## Prometheus
**Summary:** Monitoring and observability of pods, ensuring visibility into pod up status and overall health checks of defined metrics.

- 2025-08-17: Create and run bash script -> this apply the manifest to the DNS services, pods and configmaps in the monitoring namespace, sleeps the prometheus podfor 20 seconds to allow time for it to initialize, starts port forwarding and finally internally exposes the Prometheus GUI so scraped data may be visualized.
  ![prom1-1](Prometheus/prom1-1.jpg)
- 2025-08-17: Validate the pods exposed to the prometheus service are showing up in monitoring and their up state may be validated under target health status.
  ![prom1-2](Prometheus/prom1-2.jpg)

## ReplicaSets
**Summary:** ReplicaSet manifest creation, scaling, validating replica counts, and ensuring high availability.

- 2025-08-17: Create ReplicaSet manifest in Visual Studio Code, validate accessibility via bash.
  ![rs1-1](ReplicaSets/rs1-1.jpg)
- 2025-08-17: Create ReplicaSet manifest via bash, validate correct number of pods are running and healthy.
  ![rs1-2](ReplicaSets/rs1-2.jpg)
- 2025-08-17: Create new pod manifest in Visual Studio Code for ReplicaSet testing, validate availability in bash.
  ![rs1-3](ReplicaSets/rs1-3.jpg)
- 2025-08-17: Confirm correct number of pods defined in the ReplicaSet are running.
  ![rs1-4](ReplicaSets/rs1-4.jpg)
- 2025-08-17: Delete a pod and validate that ReplicaSet automatically creates a new pod; ensure 3/3 pods are running (HA validation).
  ![rs1-5](ReplicaSets/rs1-5.jpg)
- 2025-08-17: Check details of the ReplicaSet, including replica and pod counts.
  ![rs1-6](ReplicaSets/rs1-6.jpg)
- 2025-08-17: Edit ReplicaSet manifest to scale replicas to 4, confirm the fourth pod is created and running.
  ![rs1-7](ReplicaSets/rs1-7.jpg)
- 2025-08-17: Scale down replicas to 2 using CLI without editing the manifest, validate only two pods are running.
  ![rs1-8](ReplicaSets/rs1-8.jpg)
  
## Security
**Summary:** Certificate creation for Kubernetes - signing, managing gservice account keys, and creating Kubernetes secrets to secure sensitive credentials.

- 2025-08-21: Create the root certificate.
  ![sec1-1](Security/sec1-1.jpg)
- 2025-08-21: Create and sign an administrator certificate.
  ![sec1-2](Security/sec1-2.jpg)
- 2025-08-21: Create and sign the system masters certificate.
  ![sec1-3](Security/sec1-3.jpg)
- 2025-08-21: Create and sign certificates for kube-scheduler, kube-controller-manager, and kube-proxy services.
  ![sec1-4](Security/sec1-4.jpg)
- 2025-09-02: Create JSON keys and assign them to each applicable GCP service account.
  ![sec1-5](Security/sec1-5.jpg)
- 2025-09-02: Create Kubernetes secrets from JSON keys for use by all three GCP service accounts.
  ![sec1-6](Security/sec1-6.jpg)

## ServiceAccounts
**Summary:** Service account creation, attaching io pods, decoding JWT tokens, validating token TTL, and troubleshooting service account deployment issues.

- 2025-08-21: Create a service account, validate on the node, describe the service account.
  ![SA1-1](ServiceAccounts/SA1-1.jpg)
- 2025-08-21: Describe a pod with an attached service account.
  ![SA1-2](ServiceAccounts/SA1-2.jpg)
- 2025-08-23: Grab Java Web Token (JWT) for the Prometheus pod.
  ![SA1-3](ServiceAccounts/SA1-3.jpg)
- 2025-08-23: Install jq locally to view the decoded token JSON; check exp and iat values to confirm token expiration is set for one year.
  ![SA1-4](ServiceAccounts/SA1-4.jpg)
- 2025-08-23 (TROUBLESHOOTING): Manifest not creating service account or pod; updated the manifest on the node, deleted the pod, re-applied the manifest, validated creation.
  ![SA1-5](ServiceAccounts/SA1-5.jpg)

## Storage
**Summary:** PersistentVolume (PV) and PersistentVolumeClaim (PVC) creation, ephemeral storage validation, mounting across pods, multi-namespace validation, and StorageClass creation.

- 2025-09-01: Write PersistentVolume manifest for both Redis and Nginx pods, validate creation and review details via kubectl describe.
  ![stor1-1](Storage/stor1-1.jpg)
- 2025-09-01: Write manifest for both Nginx and Redis pods, start and validate running 2/2; illustrate difference between persistent and ephemeral storage.
  ![stor1-2](Storage/stor1-2.jpg)
- 2025-09-01: Describe Redis pod and validate automatically created ephemeral volume is present and mapped to the pod; check mountpoint.
  ![stor1-3](Storage/stor1-3.jpg)
- 2025-09-01: Describe Nginx pod and validate automatically created ephemeral volume is present and mapped to the pod; check mountpoint.
  ![stor1-4](Storage/stor1-4.jpg)
- 2025-09-01: Write PersistentVolumeClaim (PVC) manifest, apply, validate bound to PersistentVolume (PV).
  ![stor1-5](Storage/stor1-5.jpg)
- 2025-09-02: Create multiple pods and associated PersistentVolumes in multiple namespaces, validate creation, ready status, and namespace.
  ![stor1-6](Storage/stor1-6.jpg)
- 2025-09-02: Validate multiple PV and PVC bind status across multiple namespaces.
  ![stor1-7](Storage/stor1-7.jpg)
- 2025-09-02: Create and validate StorageClass on node.
  ![stor1-8](Storage/stor1-8.jpg)

## Terraform
**Summary:** Declarative infrastructure management in GCP and on-prem including installing Terraform, initializing, planning, applying manifests, and destroying resources declaratively.

- 2025-08-29: Install Terraform and validate on primary GCP VM.
  ![tf1-1](Terraform/tf1-1.jpg)
- 2025-09-02: Initialize Terraform, validate no issues.
  ![tf1-2](Terraform/tf1-2.jpg)
- 2025-09-02: Run terraform plan against manifest, validate no issues.
  ![tf1-3](Terraform/tf1-3.jpg)
- 2025-09-02: Validate GCP compute environment prior to applying compute manifest.
  ![tf1-4](Terraform/tf1-4.jpg)
- 2025-09-02: Apply compute manifest using Terraform, validate additional compute resources have been provisioned declaratively.
  ![tf1-5](Terraform/tf1-5.jpg)
- 2025-09-02: Validate additional compute resources (VMs) are present in the GCP project compute service.
  ![tf1-6](Terraform/tf1-6.jpg)
- 2025-09-02: Apply compute manifest using Terraform, validate additional compute resources have been destroyed declaratively.
  ![tf1-7](Terraform/tf1-7.jpg)
- 2025-09-14: TROUBLESHOOTING: During the execution of the compute_proxmox.tf config file, found that the API URL, service account name, API token name, API token secret were being passed to the terminal as output. This was occuring because secrets.tf was not correctly using the proper file format of .tfvar. Additionally, it was discovered via additional errors that API.URL was the incorrect format in the provider block of computer_proxmox.tf. The correct format for this per the provider documentation is that is api_url. Finally, this specific key: value pair was also defined incorrectly in the variables.tf configuration file. 
  ![tf1-8](Terraform/tf1-8.jpg)
- 2025-09-02: Compute infrastructure declaritivly provisioned on hypervisor using Terraform.
  ![tf1-9](Terraform/tf1-9.jpg)
