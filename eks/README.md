# Terraform AWS EKS Module

## Overview

Reusable Terraform module to provision an Amazon Elastic Kubernetes Service (EKS) cluster with managed node groups.

---

## Features

- EKS Cluster
- Managed Node Groups
- IAM Integration
- VPC Integration
- Reusable Design

---

## Resources Created

- aws_eks_cluster
- aws_eks_node_group
- IAM Resources

---

## Outputs

- cluster_name
- cluster_endpoint
- cluster_security_group_id

---

## Best Practices

- Deploy worker nodes in private subnets.
- Enable IAM Roles for Service Accounts (IRSA) when required.
- Restrict cluster endpoint access.
- Monitor cluster using CloudWatch and Prometheus.

---

## Author

**Pushpendra Singh**