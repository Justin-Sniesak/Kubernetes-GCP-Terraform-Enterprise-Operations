# Kubernetes Hybrid Cloud Operations Portfolio

## 🚀 Overview: Declarative Enterprise Kubernetes Operations

This repository documents four weeks of intense, end-to-end Kubernetes and Cloud Native operations. It serves as a practical demonstration of advanced skills in declarative infrastructure, operational resilience, and hybrid cloud management, directly confirming competencies in all respective domains.

All experiments were executed independently, resulting in a robust environment spanning **Google Cloud Platform (GCP)** and **On-Premises Hypervisors (ProxMox/KVM)**.

---

## I. Core Competency Showcase

| Pillar | Key Achievement | Demonstrated Expertise |
| :--- | :--- | :--- |
| **Hybrid IaC** | Provisioned and tore down compute resources declaratively across GCP and ProxMox using **Terraform**. | GCP (IAM, Billing, Secrets), ProxMox RBAC, Multi-Cloud Automation. |
| **Resilience & HA** | Engineered and validated self-healing application lifecycle and robust **Persistent Volume (PV/PVC)** storage. | Deployments (Rollbacks, Rollouts), ReplicaSets, Pod Troubleshooting, Stateful Workloads. |
| **Advanced Operations** | Implemented a **Service Mesh (Istio)** for L7 traffic control and established a comprehensive **Prometheus** observability stack. | Istio Gateways, Service Accounts, Certificate Management, Bash Automation. |

---

## II. Technical Deep Dive (Proof of Work)

Detailed, timestamped documentation of all operational procedures, troubleshooting steps, and successful validations can be found in the accompanying **[OPERATIONS_LOG.md](OPERATIONS_LOG.md)** file.

---

## III. Repository Structure
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
