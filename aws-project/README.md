# AWS Cloud Infrastructure & Hands-On Practice ☁️

A hands-on AWS project documenting my practical experience with cloud infrastructure, networking, compute, storage, databases, security, load balancing, command-line operations, and application deployment.

This project is part of my **DevOps Engineering Journey** and contains AWS services, concepts, configurations, and practical lab work completed through hands-on learning.

---

## 🎯 Project Objective

The objective of this project is to develop strong practical knowledge of AWS cloud infrastructure and understand how different AWS services work together in real-world DevOps environments.

My AWS practice focuses on:

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

Hands-on practice with Amazon EC2 instances and cloud-based Linux environments.

### Topics Practiced

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

Hands-on practice with AWS networking and VPC architecture.

### Topics Practiced

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

Hands-on practice with communication between separate VPC networks.

### Topics Practiced

* Creating VPC peering connections
* Understanding VPC-to-VPC communication
* Route table configuration
* Cross-VPC connectivity concepts
* Verifying peering configuration
* Understanding routing requirements for VPC Peering

---

## 🪣 Amazon S3

Hands-on practice with AWS object storage.

### Topics Practiced

* S3 buckets
* Bucket configuration
* Object storage
* S3 Versioning
* Version management
* S3 Replication concepts
* Storage architecture concepts

---

## 🗄️ Amazon RDS

Hands-on practice with managed relational database infrastructure.

### Topics Practiced

* Amazon RDS
* Database deployment concepts
* Public accessibility
* Private database access concepts
* Network connectivity
* Security considerations
* RDS and VPC relationship

---

## ⚖️ Elastic Load Balancing

Hands-on practice with AWS load balancing concepts.

### Topics Practiced

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

Hands-on practice with AWS identity, permissions, and access control.

### Topics Practiced

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

Hands-on practice using the AWS Command Line Interface to interact with AWS services.

### Topics Practiced

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

Linux was an important part of my AWS hands-on practice.

### Topics Practiced

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

Hands-on deployment of a LAMP-based application environment on AWS.

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

### Topics Practiced

* EC2-based application hosting
* Linux server configuration
* Apache web server
* Application deployment
* Security Groups
* Network connectivity
* Web server troubleshooting

---

# 🧪 Hands-On AWS Practice

My AWS hands-on practice includes:

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
* Understanding public and private database access
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

The AWS learning and hands-on work covered the following infrastructure areas:

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

The hands-on work supports important DevOps areas including:

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

The AWS knowledge developed through this project will be extended into automation and Infrastructure as Code using tools such as **Terraform and Ansible**.

---

# 📚 Learning Approach

My AWS learning has focused on **hands-on practice rather than only theoretical study**.

The workflow used throughout the learning process was:

```text
Learn Concept
     ↓
Understand AWS Architecture
     ↓
Configure Service
     ↓
Perform Hands-On Lab
     ↓
Test Connectivity / Functionality
     ↓
Troubleshoot Issues
     ↓
Document Learning
```

---

# 📂 Project Structure

```text
aws-project/
└── README.md
```

This README currently serves as the central documentation for my AWS hands-on work.

Additional architecture diagrams, configurations, screenshots, Terraform code, automation, and project implementations can be added as the AWS portfolio develops.

---

# 🚀 Future Improvements

The AWS project will continue evolving as part of my DevOps journey.

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

# 🎯 Project Outcome

Through this project, I have developed practical experience with AWS cloud infrastructure and the core services used to build, connect, secure, and operate cloud environments.

This AWS work serves as the **cloud foundation for my broader DevOps engineering portfolio**, which also includes Linux, Git & GitHub, Ansible, Docker, Kubernetes, Terraform, Jenkins, and CI/CD.

---

**Part of my DevOps Journey — AWS Cloud, Infrastructure & DevOps Practice 🚀**
