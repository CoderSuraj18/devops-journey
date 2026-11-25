# AWS Cloud Infrastructure & Operations ☁️

An engineering reference covering AWS infrastructure design and operations across compute, networking, storage, databases, identity, load balancing, command-line administration, and Linux application hosting.

## 🎯 Engineering Objective

This section describes how AWS compute, networking, storage, identity, and application-hosting services work together in cloud environments.

Technical scope includes:

* Cloud infrastructure
* Networking
* Compute
* Storage
* Databases
* Identity and access management
* Security
* Load balancing
* Linux-based cloud environments
* AWS CLI
* Application deployment
* Cloud architecture concepts

---

# ☁️ AWS Services & Technologies Practiced

## 🖥️ Compute — Amazon EC2

EC2 coverage includes instance provisioning, configuration, SSH access, and Linux-based application hosting.

### Technical Scope

* EC2 instance creation
* Instance configuration
* EC2 key pairs
* SSH connectivity
* Linux-based EC2 instances
* Connecting to EC2 using SSH
* Instance networking
* Security Group configuration
* EC2 troubleshooting
* Application deployment on EC2
* LAMP application deployment

---

## 🌐 Networking — Amazon VPC

Networking coverage includes VPC design, subnet segmentation, routing, gateways, and security controls.

### Technical Scope

* Amazon VPC
* VPC creation
* CIDR concepts
* Public subnets
* Private subnets
* Route tables
* Internet Gateway
* NAT Gateway
* Security Groups
* Public and private network architecture
* Internet connectivity
* Private subnet connectivity
* VPC routing concepts

### VPC Architecture Concepts

```text
                    AWS VPC
                       │
          ┌────────────┴────────────┐
          │                         │
     Public Subnet            Private Subnet
          │                         │
       EC2 / ALB                   EC2
          │                         │
   Internet Gateway          NAT Gateway
          │                         │
       Internet                  Internet
```

---

## 🔗 VPC Peering

VPC peering coverage includes connectivity between separate VPC networks.

### Technical Scope

* Creating VPC peering connections
* VPC-to-VPC communication
* Route table configuration
* Cross-VPC connectivity concepts
* Verifying peering configuration
* routing requirements for VPC Peering

---

## 🪣 Amazon S3

S3 coverage includes bucket configuration, object storage, versioning, and replication concepts.

### Technical Scope

* S3 buckets
* Bucket configuration
* Object storage
* S3 Versioning
* Version management
* S3 Replication concepts
* Storage architecture concepts

---

## 🗄️ Amazon RDS

RDS coverage includes database deployment patterns, network access, and security considerations.

### Technical Scope

* Amazon RDS
* Database deployment concepts
* Public accessibility
* Private database access concepts
* Network connectivity
* Security considerations
* RDS and VPC relationship

---

## ⚖️ Elastic Load Balancing

Load-balancing coverage includes listeners, target groups, health checks, and traffic distribution.

### Technical Scope

* Elastic Load Balancing
* Load Balancer configuration
* Target Groups
* Registering targets
* Target health
* Health checks
* Traffic distribution concepts
* Verifying target health

### Load Balancing Flow

```text
                Client
                   │
                   ▼
            Load Balancer
                   │
          ┌────────┴────────┐
          │                 │
          ▼                 ▼
       EC2 Instance      EC2 Instance
        Target 1           Target 2
          │                 │
          └────────┬────────┘
                   │
             Health Checks
```

---

# 🔐 Identity & Security — AWS IAM

IAM coverage includes identities, policies, permissions, and least-privilege access concepts.

### Technical Scope

* IAM
* IAM users
* IAM policies
* Permissions
* Policy-based access control
* AWS resource access concepts
* Least-privilege concepts
* IAM permissions for AWS CLI operations

---

# 💻 AWS CLI

AWS CLI coverage includes profile configuration, regional settings, and command-line resource administration.

### Technical Scope

* AWS CLI installation and configuration
* AWS CLI profiles
* Default AWS region
* Credential configuration
* IAM CLI operations
* `iam:get*` operations
* `iam:list*` operations
* Managing AWS resources from the command line
* CLI-based cloud administration

Example:

```bash
aws configure
```

Example configuration concepts:

```text
Profile: default
Region: eu-west-2
```

---

# 🐧 Linux & AWS

Linux was an important part of my AWS implementation work.

### Technical Scope

* Linux administration on EC2
* SSH access
* Linux command-line operations
* File and directory management
* Permissions
* Users and groups
* Process management
* System monitoring
* Application deployment
* Server troubleshooting

---

# 🚀 Application Deployment — LAMP

The documented LAMP deployment workflow covers EC2 hosting, Linux configuration, Apache, PHP, application deployment, and network access.

### Environment

```text
AWS
 │
 ├── VPC
 │
 ├── Subnet
 │
 ├── EC2
 │    ├── Linux
 │    ├── Apache
 │    ├── PHP
 │    └── Application
 │
 └── Networking & Security
```

### Technical Scope

* EC2-based application hosting
* Linux server configuration
* Apache web server
* Application deployment
* Security Groups
* Network connectivity
* Web server troubleshooting

---

# 🧪 AWS Implementation Coverage

AWS work covered includes:

* Creating and managing EC2 instances
* Connecting to Linux EC2 instances using SSH
* Working with EC2 key pairs
* Creating VPCs
* Creating public and private subnets
* Configuring route tables
* Working with Internet Gateways
* Working with NAT Gateways
* Configuring Security Groups
* Practicing VPC Peering
* Working with S3 buckets
* Enabling S3 Versioning
* Practicing S3 Replication concepts
* Working with Amazon RDS
* public and private database access
* Configuring Elastic Load Balancing
* Creating Target Groups
* Registering targets
* Checking target health
* Practicing IAM policies and permissions
* Using AWS CLI
* Configuring AWS CLI profiles
* Working with AWS regions
* Performing IAM operations through AWS CLI
* Deploying a LAMP environment on EC2
* Troubleshooting cloud infrastructure and connectivity

---

# 🏗️ AWS Infrastructure Concepts

The AWS infrastructure work covers the following service areas:

```text
AWS Cloud
│
├── Compute
│   └── Amazon EC2
│
├── Networking
│   ├── Amazon VPC
│   ├── Subnets
│   ├── Route Tables
│   ├── Internet Gateway
│   ├── NAT Gateway
│   ├── Security Groups
│   └── VPC Peering
│
├── Storage
│   └── Amazon S3
│       ├── Versioning
│       └── Replication
│
├── Database
│   └── Amazon RDS
│
├── Load Balancing
│   └── Elastic Load Balancing
│       ├── Target Groups
│       └── Health Checks
│
├── Identity & Access
│   └── AWS IAM
│
├── Command Line
│   └── AWS CLI
│
└── Application Deployment
    └── LAMP on EC2
```

---

# 🛠️ DevOps Relevance

This AWS project forms the cloud foundation of my DevOps engineering journey.

This technical coverage supports DevOps capabilities including:

* Cloud infrastructure
* Linux administration
* Network configuration
* Infrastructure security
* Identity and access management
* Application deployment
* Infrastructure troubleshooting
* Cloud automation
* Command-line administration
* Load balancing
* Scalable infrastructure concepts
* Infrastructure as Code preparation

The AWS service coverage provides the foundation for infrastructure automation with **Terraform and Ansible**.

---

# 📚 Engineering Workflow

The AWS workflow combines architecture review, configuration, functional validation, and troubleshooting.

The engineering workflow used for each service area was:

```text
Define Requirement
     ↓
Review Service Architecture
     ↓
Configure Service
     ↓
Configure and Execute
     ↓
Validate Connectivity and Functionality
     ↓
Investigate and Resolve Issues
     ↓
Record Configuration and Results
```

---

# 📂 Project Structure

```text
aws-project/
└── README.md
```

This directory currently contains the technical reference in this README; reusable infrastructure configuration and execution evidence should be added alongside it when committed.

Additional architecture diagrams, configurations, screenshots, Terraform code, automation, and project implementations can be added as the AWS portfolio develops.

---

# 🚀 Planned Engineering Extensions

The AWS reference will be extended as reusable infrastructure implementations and validation evidence are committed.

Planned improvements include:

* Terraform-based AWS infrastructure
* Infrastructure as Code
* Ansible automation
* Automated infrastructure deployment
* CI/CD integration
* Docker-based application deployment
* Kubernetes workloads on cloud infrastructure
* AWS monitoring and logging
* More advanced cloud architecture projects
* Automated deployment workflows

---

# 🎯 Engineering Capability Summary

Through this project, I have developed practical experience with AWS cloud infrastructure and the core services used to build, connect, secure, and operate cloud environments.

This AWS work serves as the **cloud foundation for my broader DevOps engineering portfolio**, which also includes Linux, Git & GitHub, Ansible, Docker, Kubernetes, Terraform, Jenkins, and CI/CD.

---

**Part of my DevOps Journey — AWS Cloud, Infrastructure & DevOps Engineering 🚀**
