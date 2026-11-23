# Kubernetes Container Orchestration & DevOps Practice ☸️

This folder records Kubernetes architecture, workload resources, deployment concepts, commands, and hands-on practice developed during my DevOps learning journey.

> **Project scope:** Kubernetes resources, workload management, and deployment workflows have been covered through hands-on practice. This folder documents that work; a complete reproducible application deployment is a separate portfolio deliverable.


A hands-on Kubernetes project documenting my practical experience with container orchestration, Pods, Deployments, Services, namespaces, configuration, scaling, and application management.

This project is part of my **DevOps Engineering Journey** and focuses on understanding how containerized applications are deployed, managed, and scaled using Kubernetes.

---

## 🎯 Project Objective

The objective of this project is to understand Kubernetes and its role in modern DevOps and containerized application environments.

My Kubernetes practice focuses on:

- Kubernetes architecture
- Cluster components
- Pods
- Deployments
- ReplicaSets
- Services
- Namespaces
- YAML manifests
- Application deployment
- Scaling
- Rolling updates
- Container management
- Troubleshooting

---

# ☸️ Kubernetes Architecture

The basic Kubernetes architecture:

```text
                    Kubernetes Cluster
                           │
             ┌─────────────┴─────────────┐
             │                           │
       Control Plane                  Worker Nodes
             │                           │
       ┌─────┴─────┐              ┌─────┴─────┐
       │           │              │           │
    API Server  Scheduler       Node       Node
       │                           │           │
       │                        Pods        Pods
       │                           │           │
       └───────────────┬───────────┴───────────┘
                       │
                 Applications