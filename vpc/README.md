# Terraform AWS VPC Module

## Overview

This module provisions a reusable AWS VPC with public and private subnets, Internet Gateway, Route Tables, and Route Table Associations.

---

## Features

- Create VPC
- Public Subnet
- Private Subnet
- Internet Gateway
- Public Route Table
- Private Route Table
- Route Table Associations
- Public IP Mapping Support

---

## Resources Created

- aws_vpc
- aws_subnet
- aws_internet_gateway
- aws_route_table
- aws_route_table_association

---

## Requirements

Terraform >= 1.5

AWS Provider >= 5.0

---

## Outputs

- vpc_id
- public_subnet_id
- private_subnet_id
- internet_gateway_id

---

## Best Practices

- Separate public and private workloads.
- Avoid launching databases in public subnets.
- Use NAT Gateway for outbound internet access from private subnets when required.
- Reuse this VPC module across environments.

---

## Author

**Pushpendra Singh**