variable "name" {
  description = "Security Group Name"
  type        = string
  validation {
  condition     = length(trimspace(var.name)) > 0
  error_message = "Security Group Name cannot be empty."
}
}

variable "description" {
  description = "Security Group Description"
  type        = string
  validation {
  condition     = length(trimspace(var.description)) > 0
  error_message = "Security Group Description cannot be empty."
}
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
  validation {
  condition     = length(trimspace(var.vpc_id)) > 0
  error_message = "VPC ID cannot be empty."
}
}

variable "tags" {
  description = "Tags"
  type        = map(string)
  default     = {}
}

variable "ingress_rules" {
  description = "Ingress Rules"

  type = list(object({
    description = string
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = []
}

variable "egress_rules" {
  description = "Egress Rules"

  type = list(object({
    description = string
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = []
}
