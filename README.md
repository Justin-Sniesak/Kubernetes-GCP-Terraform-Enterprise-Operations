# Platform Engineering Lab (Cloud-Native Platform)

## 🚀 Overview: Declarative Enterprise Kubernetes Operations

This SRE portfolio demonstrates enterprise-grade operations using Terraform, Kubernetes, Prometheus, Istio, and GCP. It focuses on IaC, security, and hybrid automation—reducing operational overhead, accelerating deployment velocity, and optimizing cloud costs.

---

## I. Core Competency Showcase

| Pillar | Key Achievement | Demonstrated Proficiency |
| :--- | :--- | :--- |
| **Hybrid IaC** | Provisioned and tore down compute resources declaratively across GCP and ProxMox using Terraform. | GCP (IAM, Billing, Secrets), ProxMox RBAC, Multi-Cloud Automation. |
| **Resilience & HA** | Engineered and validated self-healing application lifecycle and robust Persistent Volume (PV/PVC) storage. | Deployments (Rollbacks, Rollouts), ReplicaSets, Pod Troubleshooting, Stateful Workloads. |
| **Observability & Service Mesh** | Implemented a Service Mesh (Istio) for L7 traffic control and established a comprehensive Prometheus observability stack. | Istio Gateways, Service Accounts, Certificate Management, Bash Automation. |
| **Security & Zero Trust** | Eliminated SSH ingress and enforced granular role-based access policies across GCP and Kubernetes. | GCP (Secrets Manager, Service Accounts), Certificate Management, Bash Automation. |

---

## II. Technical Deep Dive (Proof of Work)

Detailed, timestamped documentation of all operational procedures, troubleshooting steps, and successful validations can be found in the accompanying **[OPERATIONS_LOG.md](Docs/OPERATIONS_LOG.md)** file.

---

## III. Highlights

📑 Full operational logs and troubleshooting steps are available in OPERATIONS_LOG.md

* **Reduced infra provisioning time by 99% (6h → 5m)** via automated Terraform deployment.

* Standardized **multi-tenant Kubernetes across 3 namespaces** for 10+ isolated applications.

* Achieved **100% CI/CD pipeline success** rate using GitHub Actions for automated deployments.

* **Secured the platform with Zero Trust** (no SSH ingress, granular RBAC).

* **Achieved 100% budget adherence for 3 consecutive months** through proactive GCP cost optimization.

---

## IV. Repository Structure
```
├── README.md
├── story.md
├── Artifacts/                # Visual documentation of all tasks
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
├── Docs/                        # OPERATIONS_LOG and diagrams
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
├── Scripts/                     # Bash scripting to automate Prometheus Kubernetes deployments and administration
├── Storage/                     # PersistentVolume (PV) and PersistentVolumeClaim (PVC) creation & validation
└── Terraform/                   # Terraform manifests, IaC & troubleshooting
```
