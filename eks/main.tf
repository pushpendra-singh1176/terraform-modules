resource "aws_eks_cluster" "this" {

  name     = local.cluster_name
  role_arn = var.cluster_role_arn
  version  = var.cluster_version

  enabled_cluster_log_types = var.enabled_cluster_log_types

  access_config {
    authentication_mode                         = "API_AND_CONFIG_MAP"
    bootstrap_cluster_creator_admin_permissions = true
  }

  dynamic "encryption_config" {

    for_each = var.encryption_config_enabled ? [1] : []

    content {

      provider {
        key_arn = var.kms_key_arn
      }

      resources = ["secrets"]

    }

  }

  vpc_config {

    subnet_ids              = var.subnet_ids
    security_group_ids      = var.security_group_ids
    endpoint_public_access  = var.endpoint_public_access
    endpoint_private_access = var.endpoint_private_access
    public_access_cidrs     = var.cluster_endpoint_public_access_cidrs

  }

  tags = local.cluster_tags
  timeouts {
    create = "30m"
    update = "60m"
    delete = "30m"
  }

}

# EKS Managed Node Group
###############################################

resource "aws_eks_node_group" "this" {

  cluster_name    = aws_eks_cluster.this.name
  node_group_name = var.node_group.name
  node_role_arn   = var.node_role_arn
  subnet_ids      = var.subnet_ids

  ami_type       = var.node_group.ami_type
  capacity_type  = var.node_group.capacity_type
  disk_size      = var.node_group.disk_size
  instance_types = var.node_group.instance_types

  scaling_config {

    desired_size = var.node_group.desired_size
    min_size     = var.node_group.min_size
    max_size     = var.node_group.max_size

  }

  update_config {

    max_unavailable_percentage = 25

  }

  labels = var.node_group.labels

  dynamic "taint" {

    for_each = var.taints

    content {

      key    = taint.value.key
      value  = taint.value.value
      effect = taint.value.effect

    }

  }

  tags = local.node_group_tags
  timeouts {
    create = "60m"
    update = "60m"
    delete = "30m"
  }

  lifecycle {

    ignore_changes = [
      scaling_config[0].desired_size
    ]

  }

  depends_on = [
    aws_eks_cluster.this
  ]

}
