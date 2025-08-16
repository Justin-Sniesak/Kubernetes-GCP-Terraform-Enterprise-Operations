## Scope
This repo covers all projects, tasks, and troubleshooting in preperation for obtaining the KCNA. 

## Environment
- Kubernetes: v1.33.1
- kubectl: 1.33.4
- Operating System: Ubuntu 24.0.3 LTS
- YAML for manifest authoring and troubleshooting

```
├── README.md
├── Minikube
│   ├── Installation
|   |   └── Install Minikube locally
│   ├── Create, validate, destroy
|   |   └── Start cluster and Minikube version check
|   |   └── Stop the cluster
│   ├── Install, test and validate kubectl
|   |   └── Install kubectl, validate by checking cluster info, check locally installed version
│   ├── Troubleshooting
|   |   └── Troubleshoot and correct not starting; correct memory allocated
├── Docker
│   ├── Installation
|   |   └── Install Docker locally, confirm Hello World container launches and can SSH
│   ├── Version
|   |   └── Validate locally installed version
├── Pods & Manifests
│   ├── Pods
|   |   └── Manual creation, deletion and validation 
│   ├── Manifests
|   |   └── Creation and review for YAML syntax errors
│   ├── Troubleshooting
|   |   └── Troubleshoot and correct issues related to restart loops, incorrect image in manifest, incorrect image version in manifest
│   ├── Manifest pod creation
|   |   └── Create manifest then start pods
|   |   └── Review details of pods after confirming running
|   |   └── Delete pods and confirm gone
```
## Minikube
- 08122025 Install Minikube.
  ![MK1-1](Minikube/MK1-1.jpg)
- 08122025 Start cluster and Minikube version check.
  ![MK1-2](Minikube/MK1-2.jpg)
- 08122025 Validate cluster is running, stop the cluster, then delete.
  ![MK1-3](Minikube/MK1-3.jpg)
- 08142025 Install kubectl, start the cluster, check thje cluster info, check the kubectl version.
  ![MK1-4](Minikube/MK1-4.jpg)
- 08162025 Determine Minikube is not launching because it is not started, and when it is starting starting with too much memory allocated.
  ![MK1-5](Minikube/MK1-5.jpg)
- 08162025 Fix Minikube not starting, reduce memory allocation create pod, create nginx pod.
  ![MK1-6](Minikube/MK1-6.jpg)

## Docker
- 08132025 Install Docker and Launch Hello World container.
  ![Doc1-1](Docker/Doc1-1.jpg)
- 08132025 Validate locally installed Docker version.
  ![Doc1-2](Docker/Doc1-2.jpg)

## Pods & Manifests
- 08162025 Validate running pods on the node and then review pod details.
  ![PM1-1](Pods_Manifests/PM1-1.jpg)
- 08162025 Delete the pod and confirm it is no longer running on the node.
  ![PM1-2](Pods_Manifests/PM1-2.jpg)
- 08162025 Create manifest then validate both spacing and contents are correct.
  ![PM1-3](Pods_Manifests/PM1-3.jpg)
- 08162025 Troubleshooting of pods not starting due to being in a crash loop.
  ![PM1-4](Pods_Manifests/PM1-4.jpg)
- 08162025 Troubleshooting of the wrong image being defined in the manifest.
  ![PM1-5](Pods_Manifests/PM1-5.jpg)
  - 08162025 Troubleshooting of the incorrect image version being defined in the manifest.
  ![PM1-6](Pods_Manifests/PM1-6.jpg)
  - 08162025 Describe running pods and review applicable details, speficially start process for all three.
  ![PM1-7](Pods_Manifests/PM1-7.jpg)
  - 08162025 Create manifest for all three pods, start them, confirm 3/3 are now running on the node.
  ![PM1-8](Pods_Manifests/PM1-8.jpg)
  - 08162025 Delete all three pods then validate they are gone on the node.
  ![PM1-9](Pods_Manifests/PM1-9.jpg)

  
