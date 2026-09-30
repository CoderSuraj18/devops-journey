# DevOps Journey 🚀

A hands-on DevOps learning journey focused on building practical knowledge through structured learning, daily practice, real-world labs, troubleshooting, automation, and DevOps projects.

---

## 🎯 Learning Objective

The goal of this repository is to build practical DevOps skills across Linux, version control, automation, CI/CD, cloud infrastructure, containers, orchestration, monitoring, and databases.

The learning approach focuses on:

* Understanding concepts
* Hands-on implementation
* Command-line practice
* Infrastructure automation
* Cloud infrastructure
* CI/CD pipelines
* Containerization
* Kubernetes orchestration
* Monitoring
* Troubleshooting
* Real-world DevOps workflows
* Documentation
* Portfolio projects

---

# 📚 DevOps Learning Roadmap

## 1. DevOps Introduction

### DevOps Fundamentals

* DevOps Evolution
* DevOps vs Agile vs Waterfall Model
* DevOps Goals
* DevOps Values
* DevOps Stakeholders
* DevOps Principles – The Three Ways
* Continuous Testing
* Continuous Integration
* Continuous Delivery
* Continuous Deployment
* DevOps Lifecycle
* DevOps Tools
* DevOps Toolchain
* DevOps Three Stage Conversion

---

# 2. Linux for DevOps 🐧

## Introduction to Linux

* What is Linux?
* History & Evolution of Linux
* Linux vs Windows vs macOS
* Linux Distributions

  * Ubuntu
  * CentOS
  * Red Hat
* Open Source Concepts
* Hypervisor / Virtualization

  * VirtualBox
  * VMware

## Linux Installation & Environment

* Linux Installation
* VirtualBox Environment
* Cloud VM Environment
* Linux File System Overview
* Linux Directory Structure
* GUI vs CLI
* Terminal & Shell Basics

## Basic Linux Commands

### File & Directory Commands

* `ls`
* `cd`
* `pwd`
* `mkdir`
* `rm`

### File Viewing Commands

* `cat`
* `less`
* `head`
* `tail`

### Copy & Move Commands

* `cp`
* `mv`

### Search Commands

* `find`
* `locate`
* `grep`

### Help Commands

* `man`
* `--help`

## File Permissions & Ownership

* Linux File Types
* Read, Write and Execute Permissions
* `chmod`
* `chown`
* `chgrp`
* User Concepts
* Group Concepts
* File Ownership
* Permission Management

## Linux Users & Process Management

### User Management

* `useradd`
* `passwd`
* `groupadd`

### Process Management

* `ps`
* `top`
* `kill`
* `nice`

### System Monitoring

* Process Monitoring
* CPU Monitoring
* Memory Monitoring
* Disk Monitoring
* Basic System Monitoring

## Package Management

* Package Managers

  * `apt`
  * `yum`
  * `dnf`
* Installing Software
* Updating Software
* Removing Software
* Repository Concepts

## Disk & File System Management

* Disk Partitions
* Mounting
* Unmounting
* Disk Usage

  * `df`
  * `du`
* Inodes
* Storage Basics

## Networking Basics in Linux

* IP Address
* Hostname
* Network Commands

  * `ifconfig`
  * `ip`
  * `ping`
  * `netstat`
  * `ss`
* SSH Basics
* SCP
* rsync
* File Transfer

## Linux Editors

### vi / vim

* Modes
* Commands
* Editing Configuration Files

### nano

* Basic Editing
* Configuration File Editing

## Simple Application Hosting on Linux

* Install Apache / HTTPD
* Configure Apache
* Host a Simple HTML Application on a Linux VM

## System Services & Logs

* `systemctl`
* `service`
* Start Services
* Stop Services
* Enable Services
* Log Files

  * `/var/log`
* Basic Troubleshooting

---

# 3. SCM / VCS – Git, GitHub & GitLab 🔀

## Version Control System Basics

* What is Version Control?
* Why Version Control is Required
* Problems Without VCS
* Types of VCS

  * Centralized – SVN
  * Distributed – Git
* Real-World Use Cases

## Git Fundamentals

* What is Git?
* Git Architecture
* Git Workflow
* Local Repository
* Remote Repository
* Git Installation & Setup
* Git Configuration

  * `git config`
* Git Help & Documentation

## Working with Git – Core Commands

* `git init`
* `git clone`
* Git File States
* `git add`
* `git commit`
* `git status`
* `git log`
* `git diff`
* `git checkout`
* `git restore`
* `git reset`

## Branching & Merging

* Branching
* Create Branches
* Switch Branches
* Merge Branches
* Fast-Forward Merge
* 3-Way Merge
* Merge Conflicts
* Conflict Resolution

## Advanced Git Concepts

* Git Stash
* Git Rebase
* Git Cherry-Pick
* Git Tagging
* Git Squash
* Git Revert vs Reset
* Git Hooks

## GitHub Fundamentals

* What is GitHub?
* GitHub vs Git
* Creating Repositories
* Repository Management
* Connecting Local Git to GitHub
* SSH Keys & Authentication
* GitHub UI

## Working with GitHub

* Push
* Pull
* Fork
* Clone
* Pull Requests
* Code Review
* Issues & Labels
* GitHub Projects
* GitHub Pages

## GitLab Fundamentals

* What is GitLab?
* GitLab vs GitHub
* GitLab Architecture
* GitLab Projects
* Repository Management
* GitLab UI

## Working with GitLab

* Push & Pull
* Merge Requests
* Issues & Boards
* GitLab CI/CD
* `.gitlab-ci.yml`
* GitLab Runners

## Git Workflows

* Centralized Workflow
* Feature Branch Workflow
* Gitflow Workflow
* Forking Workflow
* Team Collaboration Best Practices

## Security & Best Practices

* Repository Access Control
* Branch Protection
* Commit Message Standards
* Sensitive Data Handling
* `.gitignore`

## Hands-On Activities

* Repository Creation
* Branching & Merging
* Merge Conflict Resolution
* GitHub & GitLab
* PR / MR Collaboration
* Mini Git Projects

---

# 4. Configuration Management – Ansible ⚙️

## Configuration Management

* What is Configuration Management?
* Problems with Manual Configuration
* Benefits of Automation
* Configuration Management Tools

  * Ansible
  * Chef
  * Puppet
  * SaltStack
* Why Ansible?

## Ansible Basics

* What is Ansible?
* Ansible Architecture
* Agentless Architecture
* Push vs Pull Model
* Ansible Use Cases

## Ansible Installation & Setup

* Control Node
* Managed Nodes
* Installing Ansible on Linux
* Static Inventory
* Dynamic Inventory
* SSH Key-Based Authentication
* `ansible.cfg`

## Inventory Management

* Hosts
* Groups
* Group Variables
* Host Variables
* Inventory Structure
* Patterns
* Targeting Hosts

## Ad-Hoc Commands

* Ad-Hoc Commands
* File Management
* Package Management
* Service Management
* User Management
* Permission Management
* Gathering Facts

## Ansible Playbooks

* Playbooks
* YAML Basics
* Playbook Structure
* Tasks
* Plays
* Handlers
* Running Playbooks
* Idempotency

## Ansible Modules

* Core Modules
* File Module
* Copy Module
* Package Modules

  * `apt`
  * `yum`
* Service Modules
* Command Module
* Shell Module

## Variables & Facts

* Variables
* Variable Precedence
* Facts
* Registered Variables
* Debug Module

## Conditionals & Loops

* `when`
* `with_items`
* `loop`
* Error Handling
* Ignore Errors

## Roles

* Ansible Roles
* Role Directory Structure
* Creating Roles
* Using Roles
* Role Reusability
* Best Practices

## Templates & Handlers

* Jinja2 Templates
* Dynamic Configuration Files
* Handlers
* Notifications
* Automatic Service Restart

## Ansible Vault

* Ansible Vault
* Encrypting Sensitive Data
* Vault Passwords
* Vault Files
* Secrets Management

## Ansible with DevOps Tools

* Ansible in CI/CD
* Jenkins Integration
* Application Deployment
* Docker Integration

## Real-World Usage

* Server Setup Automation
* Apache Deployment
* Nginx Deployment
* Application Deployment
* Configuration Drift Management

## Hands-On Activities

* Ansible Installation
* Inventory Configuration
* Ad-Hoc Commands
* Playbooks
* Roles
* Package Automation
* Service Automation
* Web Application Deployment
* Ansible Vault

---

# 5. CI/CD with Jenkins 🔄

## Introduction to CI/CD

* Continuous Integration
* Continuous Delivery
* Continuous Deployment
* CI/CD Benefits
* Jenkins in DevOps Lifecycle

## Jenkins Fundamentals

* What is Jenkins?
* Jenkins Architecture
* Jenkins Components
* Jenkins Master & Agent
* Jenkins Use Cases

## Jenkins Installation & Setup

* Jenkins Installation
* Initial Configuration
* Jenkins UI
* User Management
* Role Management
* Security Basics

## Jenkins Jobs & Builds

* Freestyle Jobs
* Job Creation
* Git Integration
* Build Triggers
* Build Parameters
* Build History
* Build Logs

## Jenkins Plugins

* Jenkins Plugins
* Plugin Installation
* Plugin Management
* Important Plugins
* Plugin Best Practices

## Jenkins with Build Tools

* Maven
* Gradle
* Build Automation
* Artifact Generation

## Jenkins Pipelines

* Jenkins Pipeline
* Pipeline vs Freestyle
* Declarative Pipeline
* Scripted Pipeline
* Jenkinsfile
* Pipeline Stages
* Pipeline Steps

## Jenkins CI/CD Implementation

```text
Build → Test → Package → Deploy
```

* Environment Variables
* Credentials Management
* Notifications
* Email
* Slack – Introduction

## Jenkins Integrations

* GitHub
* GitLab
* Webhooks
* SonarQube
* Docker
* Nexus
* Artifactory

## Jenkins Agents

* Jenkins Agents
* Static Agents
* Dynamic Agents
* Distributed Builds
* Load Distribution

## Maintenance & Best Practices

* Backup & Restore
* Job Monitoring
* Performance Tuning
* Security
* Troubleshooting

## Hands-On Activities

* Jenkins Installation
* User Configuration
* Freestyle Jobs
* Pipeline Jobs
* Git Integration
* Maven Builds
* CI/CD Pipeline
* Application Deployment

---

# 6. AWS Cloud Services ☁️

## AWS Cloud Fundamentals

* What is Cloud Computing?
* Cloud Service Models

  * IaaS
  * PaaS
  * SaaS
* Cloud Deployment Models

  * Public
  * Private
  * Hybrid
* Cloud vs On-Premises
* Benefits of Cloud Computing
* AWS Global Infrastructure
* AWS Regions
* Availability Zones
* AWS Edge Locations
* Shared Responsibility Model

## AWS Compute

### Amazon EC2

* EC2 Instances
* Instance Types
* AMIs
* Key Pairs
* Security Groups
* Elastic IP
* Instance Lifecycle
* User Data
* EC2 Monitoring
* Connecting to Linux EC2
* SSH
* PuTTY
* EC2 Instance Management

### Auto Scaling

* Auto Scaling Groups
* Launch Templates
* Scaling Policies
* Health Checks
* High Availability

### AWS Lambda

* Serverless Computing
* Lambda Functions
* Event-Driven Architecture
* Lambda Execution
* Basic Lambda Use Cases

---

## AWS Storage

### Amazon S3

* S3 Buckets
* Objects
* Storage Classes
* Bucket Policies
* IAM Access
* Versioning
* Lifecycle Rules
* Encryption
* Replication
* Cross-Region Replication
* Static Website Hosting

### Amazon EBS

* EBS Volumes
* Volume Types
* Attach / Detach
* Snapshots
* Root Volumes
* Storage Management

### Amazon EFS

* Elastic File System
* Shared File Storage
* Mounting EFS
* Linux Integration

---

## AWS Networking

### Amazon VPC

* VPC
* CIDR
* Subnets
* Public Subnets
* Private Subnets
* Route Tables
* Internet Gateway
* NAT Gateway
* Network ACLs
* Security Groups
* Public IP
* Private IP
* Elastic IP

### VPC Connectivity

* VPC Peering
* Routing Between VPCs
* Private Connectivity
* Network Architecture

### Load Balancing

* Elastic Load Balancing
* Application Load Balancer
* Target Groups
* Health Checks
* Listener Configuration
* Registering Targets

---

## AWS IAM

* IAM Users
* IAM Groups
* IAM Roles
* IAM Policies
* Managed Policies
* Inline Policies
* Permissions
* Least Privilege
* Authentication
* Authorization
* IAM Best Practices
* Access Keys
* AWS CLI Profiles

---

## AWS Databases

### Amazon RDS

* Managed Relational Databases
* RDS Instances
* Database Engines
* Connectivity
* Security Groups
* Public Accessibility
* Backups
* Snapshots
* High Availability Concepts

### Other AWS Database Concepts

* Managed Database Services
* Database Security
* Backup & Recovery
* Cloud Database Architecture

---

## AWS Monitoring & Management

### Amazon CloudWatch

* Metrics
* Logs
* Alarms
* Dashboards
* Monitoring EC2
* Resource Monitoring
* Application Monitoring

### AWS CloudTrail

* API Activity
* Account Activity
* Audit Logs
* Security & Compliance

---

## AWS Security

* Shared Responsibility Model
* IAM
* Security Groups
* Network ACLs
* Encryption
* Key Management Concepts
* Least Privilege
* Security Best Practices
* AWS Security Monitoring

---

## AWS CLI

* AWS CLI Installation
* AWS CLI Configuration
* Profiles
* Regions
* Authentication
* EC2 Commands
* S3 Commands
* IAM Commands
* Resource Management
* CLI-Based Automation

---

## AWS Infrastructure & Architecture

* High Availability
* Fault Tolerance
* Scalability
* Elasticity
* Multi-AZ Architecture
* Public / Private Architecture
* Web Application Architecture
* VPC Architecture
* Secure Cloud Architecture

---

## AWS Hands-On Practice

AWS cloud learning has been practiced through hands-on labs covering the major services and cloud infrastructure concepts studied in this journey.

Hands-on areas include:

* EC2
* VPC
* Subnets
* Route Tables
* Internet Gateway
* NAT Gateway
* Security Groups
* Network ACLs
* VPC Peering
* Load Balancers
* Target Groups
* S3
* S3 Versioning
* S3 Replication
* EBS
* RDS
* IAM
* AWS CLI
* CloudWatch
* CloudTrail
* Key Pairs
* SSH
* Linux EC2 Administration
* Cloud Networking
* Storage
* Security
* Monitoring
* High Availability Concepts

### AWS Tools Practiced

```text
AWS Management Console
AWS CLI
SSH
PuTTY
Linux CLI
CloudWatch
IAM
EC2
VPC
S3
RDS
Elastic Load Balancing
```

### AWS Status

**AWS Cloud Services – ✅ Completed with Hands-On Practice**

The AWS section has been studied through practical cloud labs and service-level exercises, with hands-on work across compute, storage, networking, IAM, databases, monitoring, security, and AWS CLI operations.

---

# 7. Containers & Orchestration – Docker 🐳

## Introduction to Containers

* Containerization
* Virtual Machines vs Containers
* Benefits of Containers
* Container Use Cases
* Container Ecosystem

## Docker Fundamentals

* What is Docker?
* Docker Architecture
* Docker Engine
* Docker Client
* Docker Daemon
* Docker Lifecycle

## Docker Installation & Setup

* Docker on Linux
* Docker on Windows
* Docker CLI
* Docker Configuration
* Installation Verification

## Docker Images

* Docker Images
* Docker Hub
* Image Registries
* Pulling Images
* Pushing Images
* Tags
* Image Versioning
* Image Management

## Docker Containers

* Creating Containers
* Running Containers
* Container Lifecycle
* Start
* Stop
* Remove
* Logs
* Inspect
* Execute Commands

## Dockerfile

* Dockerfile
* Dockerfile Instructions
* Building Images
* Dockerfile Best Practices
* Multi-Stage Builds

## Docker Volumes & Networking

* Docker Volumes
* Bind Mounts
* Data Persistence
* Docker Networking
* Port Mapping
* Exposing Ports

## Docker Compose

* Docker Compose
* `docker-compose.yml`
* Multi-Container Applications
* Service Management

## Docker Security

* Image Security
* Container Isolation
* Resource Limits
* Docker Best Practices

---

# 8. Kubernetes – Container Orchestration ☸️

## Kubernetes Fundamentals

* What is Kubernetes?
* Why Kubernetes?
* Kubernetes Use Cases
* Kubernetes Architecture

## Kubernetes Architecture

* Control Plane
* Worker Nodes
* Kubernetes Objects
* Cluster Workflow

## Kubernetes Setup

* Minikube
* Kind
* `kubectl`
* Cluster Creation
* Cluster Management
* YAML Configuration

## Kubernetes Core Concepts

* Pods
* ReplicaSets
* Deployments
* Namespaces
* Labels
* Selectors

## Kubernetes Networking

* Services
* ClusterIP
* NodePort
* LoadBalancer
* Ingress
* Service Discovery

## Configuration & Storage

* ConfigMaps
* Secrets
* Volumes
* Persistent Volumes
* Persistent Volume Claims

## Scaling & High Availability

* Horizontal Pod Autoscaling
* Rolling Updates
* Rollbacks
* Self-Healing

## Monitoring & Security

* Resource Monitoring
* Logs
* Debugging
* RBAC
* Security Best Practices

## Kubernetes Real-World Projects

* Application Deployment
* CI/CD Integration
* Docker Image Integration
* Kubernetes Troubleshooting
* Interview Preparation

## Hands-On Activities

* Docker Installation
* Container Deployment
* Custom Docker Images
* Docker Compose
* Minikube
* Kubernetes Deployments
* Scaling
* Application Updates

---

# 9. Continuous Monitoring with Nagios 📊

## Monitoring Fundamentals

* What is Monitoring?
* Importance of Continuous Monitoring
* Monitoring in DevOps
* System Monitoring
* Application Monitoring
* Network Monitoring
* Proactive Monitoring
* Reactive Monitoring

## Nagios Fundamentals

* What is Nagios?
* Nagios Core
* Nagios XI
* Nagios Use Cases
* Advantages & Limitations

## Nagios Architecture

* Nagios Server
* Nagios Plugins
* NRPE
* NSClient++
* Hosts
* Services
* Monitoring Workflow

## Installation & Setup

* Nagios Core Installation
* Web Interface
* User Authentication
* Access Management
* Installation Verification

## Nagios Plugins

* Plugins
* Official Plugins
* Custom Plugins
* Plugin Execution
* Plugin Return Codes

## Host & Service Monitoring

* Host Monitoring
* Service Monitoring
* Linux Server Monitoring

## Configuration

* Object Configuration
* Host Definitions
* Service Definitions
* Command Definitions
* Contacts
* Contact Groups
* Templates
* Configuration Validation

## Alerts & Notifications

* Alerting
* Email Notifications
* Notification Escalations
* Downtime Scheduling
* Problem Acknowledgement

## Performance Monitoring

* CPU
* Memory
* Disk
* Load
* Processes
* Network
* Service Availability

## Remote Monitoring

* NRPE
* NRPE Installation
* NRPE Configuration
* Remote Host Monitoring
* Security Considerations

## Reporting & Visualization

* Status Reports
* Availability Reports
* Trends
* Performance Graphs
* SLA Monitoring
* Dashboards

## Nagios Alternatives

* Zabbix
* Prometheus
* Grafana
* ELK Stack

## Hands-On Activities

* Nagios Installation
* Host Configuration
* Service Monitoring
* CPU Monitoring
* Memory Monitoring
* Disk Monitoring
* Alerts
* Notifications
* NRPE
* Troubleshooting

---

# 10. Databases & SQL 🗄️

## Database Fundamentals

* What is Data?
* What is a Database?
* What are Tables?
* Types of Databases

## MySQL

* What is MySQL?
* MySQL Installation
* Creating Databases
* Creating Tables
* DDL Operations
* DML Operations
* DCL Operations

---

# 🧪 Hands-On Labs

This repository documents practical DevOps learning through hands-on exercises and labs.

Examples include:

* Linux Administration
* User & Group Management
* File Permissions
* Process Management
* System Monitoring
* Linux Networking
* Apache Web Server
* Git & GitHub
* Git Branching
* Merge Conflicts
* Ansible Inventory
* Ansible Playbooks
* Configuration Management
* Jenkins CI/CD
* AWS Infrastructure
* AWS Networking
* AWS Storage
* AWS IAM
* AWS CLI
* Docker
* Kubernetes
* Monitoring
* SQL

---

# 📈 Learning Progress

| Section               | Status                             |
| --------------------- | ---------------------------------- |
| DevOps Introduction   | 🔄 Learning                        |
| Linux for DevOps      | 🔄 In Progress                     |
| Git / GitHub / GitLab | 🔄 Learning                        |
| Ansible               | ⏳ Upcoming                         |
| Jenkins / CI/CD       | ⏳ Upcoming                         |
| AWS Cloud Services    | ✅ Completed with Hands-On Practice |
| Docker                | ⏳ Upcoming                         |
| Kubernetes            | ⏳ Upcoming                         |
| Nagios Monitoring     | ⏳ Upcoming                         |
| Databases & SQL       | ⏳ Upcoming                         |

> Progress is updated as topics are learned, practiced, and documented.

---

# 📂 Repository Structure

```text
devops-journey/
│
├── day-01-linux/
├── day-02-linux/
├── day-03-linux/
├── day-04-linux/
│   ├── day4-notes.txt
│   ├── day4-pratice.txt
│   └── ownership.txt
│
├── day-05/
├── day-06/
├── ...
│
└── README.md
```

The repository structure will continue to evolve as new topics, labs, and projects are added.

---

# 🛠️ Tools & Technologies

```text
Linux
Git
GitHub
GitLab
Ansible
Jenkins
AWS
AWS CLI
EC2
VPC
S3
RDS
IAM
CloudWatch
CloudTrail
Elastic Load Balancing
Docker
Kubernetes
Helm
Nagios
MySQL
SQL
YAML
Shell Scripting
```

---

# 🔧 Learning Approach

The DevOps journey follows a practical approach:

```text
Learn
  ↓
Understand
  ↓
Practice
  ↓
Build
  ↓
Troubleshoot
  ↓
Document
  ↓
Improve
```

The focus is on developing practical knowledge that can be applied to real-world DevOps environments.

---

# 🚀 DevOps Journey

This repository is a continuous record of the DevOps learning journey — from Linux fundamentals and version control to configuration management, CI/CD, AWS cloud infrastructure, containers, Kubernetes, monitoring, and databases.

The objective is not only to learn DevOps concepts, but to:

**Practice → Build → Troubleshoot → Automate → Document**

---

## 📌 Current Status

**DevOps Journey: In Progress 🚀**

**AWS Cloud Services: Completed with Hands-On Practice ✅**

**Current Focus: Linux for DevOps 🔄**

---

## 👨‍💻 Repository Purpose

This repository serves as:

* A personal DevOps learning journal
* A hands-on practice repository
* A collection of labs and exercises
* A reference for DevOps commands and concepts
* A record of practical progress
* A portfolio of DevOps learning and projects

---

### Learning. Practicing. Building. Automating. 🚀
