variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  validation {
    condition     = can(cidrhost(var.vpc_cidr, 0))
    error_message = "Please provide a valid CIDR block."
  }
}

variable "enable_dns_support" {
  description = "Enable DNS resolution in the VPC"
  type        = bool
  default      = true
}

variable "enable_dns_hostnames" {
  description = "Enable DNS hostnames in the VPC"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags to apply to the VPC"
  type        = map(string)
}
variable "public_subnet_cidr" {
  description = "CIDR block for public subnet"
  type        = string
}

variable "private_subnet_cidr" {
  description = "CIDR block for private subnet"
  type        = string
}

variable "public_availability_zone" {
  description = "Availability Zone for public subnet"
  type        = string
}

variable "private_availability_zone" {
  description = "Availability Zone for private subnet"
  type        = string
}
