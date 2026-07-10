# Terraform AWS IAM Module

## Overview

Reusable IAM module that creates IAM Roles, attaches AWS Managed Policies, and optionally creates an Instance Profile for EC2.

---

## Features

- IAM Role Creation
- Dynamic Policy Attachments
- Optional Instance Profile
- Multiple Trusted Services
- AWS IAM Policy Document Support

---

## Resources Created

- aws_iam_role
- aws_iam_role_policy_attachment
- aws_iam_instance_profile

---

## Outputs

- role_name
- role_arn
- instance_profile_name
- instance_profile_arn

---

## Best Practices

- Use least privilege access.
- Avoid hardcoded IAM policies.
- Use managed policies whenever possible.
- Keep roles reusable.

---

## Author

**Pushpendra Singh**