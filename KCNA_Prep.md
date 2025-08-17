## Scope
This repo covers all projects, tasks, and troubleshooting in preperation for obtaining the KCNA. 

## Environment
- Kubernetes: v1.33.1
- kubectl: 1.33.4
- Operating System: Ubuntu 24.0.3 LTS
- YAML for manifests
- Visual Studio Code: v1.103.1

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
├── ReplicaSets
│   ├── Manifests
|   |   └── Creation and modification for ReplicaSets and Pods
│   ├── Pods 
|   |   └── Creation and validation through Replicaset
|   |   └── Deletion and validation through Replicaset
|   |   └── Scale up/down via Replicaset
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

## Replicasets
- 08172025 ReplicaSet manifest created in Visual Studio Code, validate accesible through bash shell locally.
  ![RS1-1](Replicasets/RS1-1.jpg)
- 08172025 Create ReplicaSet manifest in bash, then validate the correct number of pods are started running in a healthy state.
  ![RS1-2](Replicasets/RS1-2.jpg)
- 08172025 Create new pod manifest in Visual Studio Code, validate available in bash, to be used with Replicaset testing.
  ![RS1-3](Replicasets/RS1-3.jpg)
- 08172025 Confirm correct number of pods defined in the Replicaset are running.
  ![RS1-4](Replicasets/RS1-4.jpg)
- 08172025 Delete a pod, then validate the Replicaset created and started new pod, validate 3/3 are running, so HA is functioning as intended.
  ![RS1-5](Replicasets/RS1-5.jpg)
- 08172025 Check the details of the Replicaset, specifically checking for both replica and pod counts.  
  ![RS1-6](Replicasets/RS1-6.jpg)
- 08172025 Edit the Replicaset manifest, scale the number of replicas to 4, confirm the fourth pod has been started, and is now running.
  ![RS1-7](Replicasets/RS1-7.jpg)
- 08172025 Scale down the number of replicas to 2, without editing the manifest (using CLI syntax), then validate that only two pods are running.  
  ![RS1-8](Replicasets/RS1-8.jpg)
  
  
  
