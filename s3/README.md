# Terraform AWS S3 Module

## Overview

Reusable Terraform module to provision secure Amazon S3 buckets.

---

## Features

- Versioning
- Server Side Encryption
- Public Access Block
- Resource Tags

---

## Resources Created

- aws_s3_bucket
- aws_s3_bucket_versioning
- aws_s3_bucket_server_side_encryption_configuration
- aws_s3_bucket_public_access_block

---

## Outputs

- bucket_id
- bucket_name
- bucket_arn

---

## Best Practices

- Always enable versioning.
- Enable server-side encryption.
- Block public access.
- Follow least privilege for bucket policies.

---

## Author

**Pushpendra Singh**