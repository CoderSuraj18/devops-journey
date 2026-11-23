# Ansible Automation & Configuration Management Project ⚙️

This folder records Ansible configuration management, inventory, playbook concepts, YAML, and hands-on automation practice developed during my DevOps learning journey.

> **Project scope:** Ansible configuration management, YAML, inventory, and playbook workflows have been covered through hands-on learning. This folder serves as the reference for that work; a separately reproducible automation project is a distinct portfolio deliverable.


A hands-on Ansible project documenting my practical experience with configuration management, server automation, inventory management, playbooks, and Linux server administration.

This project is part of my **DevOps Engineering Journey** and focuses on automating repetitive infrastructure and server-management tasks using Ansible.

---

## 🎯 Project Objective

The objective of this project is to understand how Ansible can be used to automate Linux server administration and configuration management.

My hands-on practice focuses on:

- Ansible architecture
- Inventory management
- Managed nodes
- SSH-based connectivity
- Ad-hoc commands
- Playbooks
- YAML
- Variables
- Tasks
- Modules
- Configuration management
- Server automation
- Application installation
- Troubleshooting

---

# ⚙️ Ansible Architecture

The basic Ansible workflow used in my practice:

```text
                 Ansible Control Node
                         │
                         │ SSH
                         ▼
              ┌─────────────────────┐
              │   Managed Servers   │
              │                     │
              │  Linux Server 1     │
              │  Linux Server 2     │
              └─────────────────────┘