# Platform Engineering Portfolio

## 🚀 Overview: Declarative Enterprise Kubernetes Operations

This project demonstrates end-to-end Kubernetes and GCP platform engineering skills, including IaC, observability, service mesh, and hybrid on-prem/cloud automation.

All experiments were executed independently, resulting in a robust environment spanning Google Cloud Platform (GCP) and On-Premises Hypervisors (ProxMox/KVM).

---

## I. Core Competency Showcase

| Pillar | Key Achievement | Demonstrated Proficiency |
| :--- | :--- | :--- |
| **Hybrid IaC** | Provisioned and tore down compute resources declaratively across GCP and ProxMox using **Terraform**. | GCP (IAM, Billing, Secrets), ProxMox RBAC, Multi-Cloud Automation. |
| **Resilience & HA** | Engineered and validated self-healing application lifecycle and robust **Persistent Volume (PV/PVC)** storage. | Deployments (Rollbacks, Rollouts), ReplicaSets, Pod Troubleshooting, Stateful Workloads. |
| **Advanced Operations** | Implemented a **Service Mesh (Istio)** for L7 traffic control and established a comprehensive **Prometheus** observability stack. | Istio Gateways, Service Accounts, Certificate Management, Bash Automation. |

---

## II. Technical Deep Dive (Proof of Work)

Detailed, timestamped documentation of all operational procedures, troubleshooting steps, and successful validations can be found in the accompanying **[OPERATIONS_LOG.md](OPERATIONS_LOG.md)** file.

---

## III. Highlights

* Engineered, automated, and launched a full containerized Prometheus observability stack with service discovery, proactively monitoring metrics and reducing potential Mean Time to Resolution (MTTR) by 50%
* Architected and standardized a multi-tenant Kubernetes environment across 3 namespaces, supporting 10 distinct applications and enforcing resource quotas via ConfigMaps
* Automated end-to-end GCP infrastructure deployment via Terraform and service accounts, reducing environment spin-up/tear-down time from 6 hours to 5 minutes while ensuring immutable infrastructure
* Developed and implemented a full CI/CD pipeline using GitHub Actions, achieving a 100% build success rate and automating the deployment of 2 portfolio sites
* Secured the platform with an engineered Zero Trust pipeline on GCP, eliminating SSH ingress and defining granular, programmatic role-based access policies
* Implemented proactive GCP cost optimization measures (billing analysis, resource rightsizing) that realized a 100% on-target adherence in monthly cloud spend over 3 months

---

## IV. Repository Structure
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
├── Manifests/                   # YAML manifests for Kubernetes resources
├── Deployments/                 # Deployment manifests & testing (rollouts, scaling, rollback)
├── Docker/                      # Docker installation, container management, volumes
├── GCP/                         # GCP provisioning, storage, VM management, billing, IAM
├── Istio/                       # Service mesh setup, Bookclub demo app, gateway & virtual services
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
