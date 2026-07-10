variable "name" {
  description = "Security Group Name"
  type        = string
}

variable "description" {
  description = "Security Group Description"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "tags" {
  description = "Tags"
  type        = map(string)
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
}