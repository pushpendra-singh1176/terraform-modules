locals {

  cluster_name = var.cluster_name

  cluster_tags = merge(
    var.tags,
    {
      Name      = local.cluster_name
      ManagedBy = "Terraform"
      Module    = "EKS"
    }
  )

  node_group_tags = merge(
    var.tags,
    var.node_group.tags,
    {
      Name = "${local.cluster_name}-${var.node_group.name}"
    }
  )

}
