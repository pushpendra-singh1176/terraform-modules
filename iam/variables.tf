variable "role_name" {
  description = "IAM Role Name"
  type        = string
  validation {
    condition     = length(trimspace(var.role_name)) > 0 && length(trimspace(var.role_name)) <= 64
    error_message = "The IAM Role Name must be between 1 and 64 characters."
  }
}
variable "trusted_services" {
  description = "AWS services allowed to assume this role"
  type        = list(string)
   validation {
    condition     = length(var.trusted_services) > 0
    error_message = "At least one trusted service must be provided."
  }
}

variable "managed_policy_arns" {
  description = "List of Managed Policy ARNs"
  type        = list(string)
  default     = []
}

variable "create_instance_profile" {
  description = "Create Instance Profile"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Common Tags"
  type        = map(string)
  default     = {}
}
