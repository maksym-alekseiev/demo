# Introduction
Description of the tools and their purpose

minikube - minikube is local Kubernetes, focusing on making it easy to learn and develop for Kubernetes. All you need is Docker (or similarly compatible) container or a Virtual Machine environment, and Kubernetes.
kind - is a tool for running local Kubernetes clusters using Docker container “nodes”. kind was primarily designed for testing Kubernetes itself, but may be used for local development or CI.
k3d - k3d is a lightweight wrapper to run k3s (Rancher Lab’s minimal Kubernetes distribution) in docker. k3d makes it very easy to create single- and multi-node k3s clusters in docker, e.g. for local development on Kubernetes.

# Features

|           | minikube                                                                       | kind                                                      | k3d                                                              |
|-----------|--------------------------------------------------------------------------------|-----------------------------------------------------------|------------------------------------------------------------------|
| OS & Arch | Linux: x86-64, ARM64, ARMv7, ppc64, S390x Windows: x86-64 MacOS: x86-64, ARM64 | Linux: x86-64, ARM64 Windows: x86-64 MacOS: x86-64, ARM64 | Linux: x86-64, ARM64, ARMv7 Windows: x86-64 MacOS: x86-64, ARM64 |

# Pros & Cons

|                  | minikube | kind | k3d |
|:----------------:|:--------:|:----:|:---:|
|    Ease of Use   |    +-    |   +  |  +  |
| Deployment speed |     -    |  +-  |  +  |
|     Stability    |     +    |   +  |  +  |
|   Documentation  |     +    |   +  |  +  |
|     Community    |     +    |  +-  |  -  |
|    Complexity    |     -    |  +-  |  +  |
|      Podman      |    +-    |   +  |  +  |

#Demo
k3d cluster create argo

kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

kubectl port-forward svc/argocd-server -n argocd 8080:443&

#Conclusion
The best case for our project would be k3d