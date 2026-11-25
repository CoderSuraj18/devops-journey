# Ansible Configuration Management & Server Automation ⚙️

An engineering reference for Ansible-based configuration management and Linux server automation, covering control-node architecture, inventories, SSH connectivity, ad-hoc execution, YAML playbooks, tasks, modules, and validation.

## 🎯 Engineering Objective

The objective of this project is to understand how Ansible can be used to automate Linux server administration and configuration management.

My implementation work focuses on:

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

The Ansible control-node workflow:

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