# Terraform AWS EC2 Module

## Overview

This Terraform module provisions an Amazon EC2 instance with configurable networking, SSH access, security groups, and resource tags. The module is designed to be reusable across multiple AWS projects.

---

## Features

- Create an Amazon EC2 Instance
- Custom AMI Support
- Custom Instance Type
- Attach Existing Security Groups
- Launch in Any Subnet
- SSH Key Pair Support
- Custom Resource Tags
- Reusable Module Design

---

## Resources Created

- aws_instance

---

## Requirements

| Name | Version |
|------|----------|
| Terraform | >= 1.5 |
| AWS Provider | >= 5.0 |

---

## Input Variables

| Name | Type | Required | Description |
|------|------|----------|-------------|
| ami | string | Yes | EC2 AMI ID |
| instance_type | string | Yes | EC2 Instance Type |
| key_name | string | Yes | SSH Key Pair |
| subnet_id | string | Yes | Subnet ID |
| security_group_ids | list(string) | Yes | Security Group IDs |
| tags | map(string) | Yes | Resource Tags |

---

## Outputs

| Name | Description |
|------|-------------|
| instance_id | EC2 Instance ID |
| public_ip | Public IP Address |

---

## Folder Structure

```
ec2/
├── main.tf
├── variables.tf
├── outputs.tf
└── README.md
```

---

## Example Usage

```hcl
module "ec2" {
  source = "./modules/ec2"

  ami                = "ami-xxxxxxxx"
  instance_type      = "t3.micro"
  key_name           = "demo-key"
  subnet_id          = "subnet-xxxxxxxx"
  security_group_ids = ["sg-xxxxxxxx"]

  tags = {
    Name = "Demo-EC2"
  }
}
```

---

## Best Practices

- Do not hardcode AMI IDs.
- Use variables for instance type and networking.
- Keep security groups separate from the EC2 module.
- Apply consistent tags to all resources.

---

## Author

**Pushpendra Singh**