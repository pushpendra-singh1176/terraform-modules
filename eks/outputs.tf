output "cluster_name" {
  description = "Name of the EKS Cluster"
  value       = aws_eks_cluster.this.name
}

output "cluster_arn" {
  description = "ARN of the EKS Cluster"
  value       = aws_eks_cluster.this.arn
}

output "cluster_endpoint" {
  description = "Endpoint for the EKS Cluster"
  value       = aws_eks_cluster.this.endpoint
}

output "cluster_version" {
  description = "Kubernetes version of the EKS Cluster"
  value       = aws_eks_cluster.this.version
}

output "cluster_certificate_authority_data" {
  description = "Base64 encoded certificate data required to communicate with the cluster"
  value       = aws_eks_cluster.this.certificate_authority[0].data
}

output "cluster_security_group_id" {
  description = "Cluster security group ID"
  value       = aws_eks_cluster.this.vpc_config[0].cluster_security_group_id
}

output "cluster_oidc_issuer_url" {
  description = "OIDC issuer URL for the EKS Cluster"
  value       = aws_eks_cluster.this.identity[0].oidc[0].issuer
}



# EKS Managed Node Group Outputs
###############################################

output "node_group_name" {
  description = "Name of the EKS Managed Node Group"
  value       = aws_eks_node_group.this.node_group_name
}

output "node_group_arn" {
  description = "ARN of the EKS Managed Node Group"
  value       = aws_eks_node_group.this.arn
}

output "node_group_status" {
  description = "Current status of the EKS Managed Node Group"
  value       = aws_eks_node_group.this.status
}