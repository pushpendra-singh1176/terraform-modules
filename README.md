# 🚀 Terraform AWS Infrastructure Modules
## 📂 Repository Structure

```text
terraform-modules/
│
├── README.md
├── LICENSE
├── .gitignore
│
├── ec2/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── versions.tf
│   └── README.md
│
├── eks/
│   ├── data.tf
│   ├── locals.tf
│   ├── main.tf
│   ├── outputs.tf
│   ├── variables.tf
│   ├── versions.tf
│   └── README.md
│
├── iam/
│   ├── data.tf
│   ├── main.tf
│   ├── outputs.tf
│   ├── variables.tf
│   ├── versions.tf
│   └── README.md
│
├── s3/
│   ├── main.tf
│   ├── outputs.tf
│   ├── variables.tf
│   ├── versions.tf
│   └── README.md
│
├── security-group/
│   ├── main.tf
│   ├── outputs.tf
│   ├── variables.tf
│   ├── versions.tf
│   └── README.md
│
└── vpc/
    ├── main.tf
    ├── outputs.tf
    ├── variables.tf
    ├── versions.tf
    └── README.md
```

A production-ready collection of reusable Terraform modules for provisioning AWS infrastructure using Infrastructure as Code (IaC). This repository follows a modular architecture, making it easy to build scalable, secure, and maintainable cloud environments across multiple projects.

---

## 📌 Overview

This repository contains reusable Terraform modules that can be combined to deploy complete AWS infrastructure. Each module is independent, configurable, and follows Terraform best practices for maintainability and reusability.

These modules are designed to be used in real-world infrastructure projects and serve as building blocks for production-grade cloud deployments.

---

# ✨ Features

* Modular Infrastructure as Code (IaC)
* Reusable Terraform modules
* Production-ready architecture
* Dynamic variables and input validation
* Consistent resource tagging
* Secure IAM configuration
* AWS EKS Managed Node Group support
* S3 Versioning and Server-Side Encryption
* Public and Private VPC networking
* Security Group module
* Well-structured outputs
* Easy integration with future projects

---

# 📂 Repository Structure

```text
terraform-modules/
│
├── ec2/
├── eks/
├── iam/
├── s3/
├── security-group/
├── vpc/
│
└── README.md
```

---

# 📦 Available Modules

| Module         | Description                                                                          |
| -------------- | ------------------------------------------------------------------------------------ |
| VPC            | Creates VPC, Public/Private Subnets, Internet Gateway, Route Tables and Associations |
| Security Group | Creates reusable Security Groups with configurable ingress and egress rules          |
| IAM            | Creates IAM Roles, Policy Attachments and Instance Profiles                          |
| EC2            | Deploys configurable EC2 instances                                                   |
| S3             | Creates secure S3 buckets with Versioning, Encryption and Public Access Block        |
| EKS            | Deploys Amazon EKS Cluster with Managed Node Group                                   |

---

# 🏗 Architecture

```text
                   Root Project
                         │
        ┌────────────────┼────────────────┐
        │                │                │
      VPC          Security Group        IAM
        │                │                │
        └────────────┬───┴────────────────┘
                     │
                     ▼
                   EC2
                     │
                     ▼
                    EKS
                     │
                     ▼
              Kubernetes Workloads
```

---

# 🛠 Prerequisites

* Terraform >= 1.5
* AWS CLI configured
* AWS Account
* IAM User/Role with required permissions

---

# 🚀 Example Usage

```hcl
module "vpc" {
  source = "./modules/vpc"
}

module "security_group" {
  source = "./modules/security-group"
}

module "iam" {
  source = "./modules/iam"
}

module "eks" {
  source = "./modules/eks"
}

module "ec2" {
  source = "./modules/ec2"
}

module "s3" {
  source = "./modules/s3"
}
```

---

# 🔐 Best Practices Implemented

* Modular Terraform architecture
* Reusable modules
* Variable validation
* Dynamic blocks
* Consistent tagging strategy
* Secure IAM role design
* Encryption support
* Public Access Block for S3
* Managed Node Groups for EKS
* Reusable outputs
* Separation of concerns
* Infrastructure abstraction
* Clean folder structure

---

# 📈 Future Enhancements

* RDS Module
* ALB Module
* Auto Scaling Module
* CloudFront Module
* Route53 Module
* ACM Module
* WAF Module
* Lambda Module
* ElastiCache Module
* ECS Module
* ECR Module

---

# 🎯 Intended Use Cases

These modules can be reused to provision infrastructure for:

* Cloud Native Applications
* Kubernetes Platforms
* DevOps Projects
* CI/CD Pipelines
* Production AWS Environments
* Enterprise Infrastructure
* Personal Learning Projects

---

# 👨‍💻 Author

**Pushpendra Singh**

DevOps Engineer

Skills:

* AWS
* Terraform
* Docker
* Kubernetes
* Jenkins
* GitHub Actions
* Linux
* Helm
* ArgoCD

---

# ⭐ Support

If you find this repository useful, consider giving it a ⭐ on GitHub.
