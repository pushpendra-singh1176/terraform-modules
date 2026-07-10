# Terraform AWS Security Group Module

## Overview

Reusable AWS Security Group module with dynamic ingress and egress rules.

---

## Features

- Dynamic Ingress Rules
- Dynamic Egress Rules
- Multiple CIDRs
- Reusable Across Projects

---

## Resources Created

- aws_security_group

---

## Outputs

- security_group_id

---

## Best Practices

- Open only required ports.
- Avoid using 0.0.0.0/0 unless necessary.
- Keep security groups reusable.

---

## Author

**Pushpendra Singh**