variable "cluster_name" {
  description = "EKS Cluster Name"
  type        = string
  validation {
    condition     = length(trimspace(var.cluster_name)) > 0 && length(trimspace(var.cluster_name)) <= 100
    error_message = "The EKS Cluster Name must be between 1 and 100 characters."
  }
}
variable "cluster_version" {
  description = "EKS Cluster Version"
  type        = string

}
variable "subnet_ids" {
  description = "List of Subnet IDs for the EKS Cluster"
  type        = list(string)
  validation {
    condition     = length(var.subnet_ids) > 0
    error_message = "At least one Subnet ID must be provided."
  }
}
variable "cluster_role_arn" {
  description = "ARN of the IAM Role for the EKS Cluster"
  type        = string
  validation {
    condition     = length(trimspace(var.cluster_role_arn)) > 0
    error_message = "The IAM Role ARN for the EKS Cluster cannot be empty."
  }
}
variable "node_role_arn" {
  description = "ARN of the IAM Role for the EKS Node Group"
  type        = string
  validation {
    condition     = length(trimspace(var.node_role_arn)) > 0
    error_message = "The IAM Role ARN for the EKS Node Group cannot be empty."
  }
}
variable "security_group_ids" {
  description = "List of Security Group IDs for the EKS Cluster"
  type        = list(string)
  validation {
    condition     = length(var.security_group_ids) > 0
    error_message = "At least one Security Group ID must be provided."
  }
}
variable "endpoint_public_access" {
  description = "Enable public access to the EKS Cluster endpoint"
  type        = bool
  default     = true
}
variable "endpoint_private_access" {
  description = "Enable private access to the EKS Cluster endpoint"
  type        = bool
  default     = false
}
variable "enabled_cluster_log_types" {
  description = "List of enabled cluster log types for the EKS Cluster"
  type        = list(string)
  default     = []
  validation {

    condition = alltrue([
      for log in var.enabled_cluster_log_types :
      contains(
        ["api", "audit", "authenticator", "controllerManager", "scheduler"],
        log
      )
    ])

    error_message = "Invalid EKS log type."

  }
}
variable "node_group" {
  description = "Configuration for the EKS managed node group"

  type = object({
    name           = string
    instance_types = list(string)
    desired_size   = number
    min_size       = number
    max_size       = number
    disk_size      = number
    ami_type       = string
    capacity_type  = string
    labels         = map(string)
    tags           = map(string)
  })

  validation {
    condition = (
      var.node_group.min_size <= var.node_group.desired_size &&
      var.node_group.desired_size <= var.node_group.max_size
    )

    error_message = "desired_size must be between min_size and max_size."
  }

  validation {
    condition = contains(
      ["ON_DEMAND", "SPOT"],
      var.node_group.capacity_type
    )

    error_message = "capacity_type must be either ON_DEMAND or SPOT."
  }

  validation {
    condition = contains(
      [
        "AL2_x86_64",
        "AL2_ARM_64",
        "BOTTLEROCKET_x86_64",
        "BOTTLEROCKET_ARM_64"
      ],
      var.node_group.ami_type
    )

    error_message = "Invalid AMI type."
  }

  validation {
    condition     = length(trimspace(var.node_group.name)) > 0
    error_message = "Node group name cannot be empty."
  }

  validation {
    condition     = length(var.node_group.instance_types) > 0
    error_message = "At least one instance type must be specified."
  }

  validation {
    condition     = var.node_group.disk_size >= 20
    error_message = "Disk size must be at least 20 GiB."
  }
}
variable "labels" {
  description = "Labels for the EKS Cluster"
  type        = map(string)
  default     = {}
}
variable "taints" {
  description = "Taints for the EKS Node Group"
  type = list(object({
    key    = string
    value  = string
    effect = string
  }))
  default = []
}
variable "cluster_endpoint_public_access_cidrs" {
  description = "CIDR blocks allowed to access the EKS public endpoint"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}
variable "encryption_config_enabled" {
  description = "Enable Kubernetes secret encryption"
  type        = bool
  default     = false
}
variable "kms_key_arn" {
  description = "KMS Key ARN used for Kubernetes secret encryption"
  type        = string
  default     = null
}
variable "tags" {
  description = "Common Tags for the EKS Cluster and Node Group"
  type        = map(string)
  default     = {}
}