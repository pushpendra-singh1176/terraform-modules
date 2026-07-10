variable "instance_type" {
    description = " this instance type will use to create ce2 instace "
    type = string 
}
variable "ami_id" {
    description = " this ami id will use to create ce2 instace "
    type = string
}
variable "key_name" {
    description = "this key name will use to create ce2 instace "
    type = string
}
variable "subnet_id" {
    description = "this subnet id will use to create ce2 instace "
    type = string
}
variable "subnet_id" {
  description = "Subnet ID where the EC2 instance will be launched"
  type        = string
}

variable "security_group_ids" {
  description = "List of Security Group IDs"
  type        = list(string)
}

variable "tags" {
  description = "Tags to apply to the EC2 instance"
  type        = map(string)
}