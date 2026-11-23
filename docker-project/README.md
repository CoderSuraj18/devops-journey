# Docker Containerization & DevOps Practice 🐳

This folder records Docker containerization concepts, commands, configuration patterns, and hands-on practice developed during my DevOps learning journey.

> **Project scope:** Docker containerization concepts and workflows have been covered through hands-on practice. This folder documents that work; a reproducible application build and deployment is a separate portfolio deliverable.


A hands-on Docker project documenting my practical experience with containerization, Docker images, containers, networking, volumes, Dockerfiles, and container management.

This project is part of my **DevOps Engineering Journey** and focuses on understanding how applications can be packaged, deployed, and managed using containers.

---

## 🎯 Project Objective

The objective of this project is to understand Docker containerization and how containers are used in modern DevOps environments.

My Docker practice focuses on:

- Container fundamentals
- Docker architecture
- Images
- Containers
- Dockerfiles
- Container lifecycle
- Port mapping
- Docker networking
- Docker volumes
- Container management
- Application containerization
- Troubleshooting

---

# 🐳 Docker Architecture

The basic Docker workflow:

```text
                 Docker Host
                     │
          ┌──────────┴──────────┐
          │                     │
      Docker Image          Docker CLI
          │                     │
          ▼                     │
      Container ◄───────────────┘
          │
          ▼
      Application