resource "aws_instance" "this" {
    instance_type = var.instance_type
    ami           = var.ami_id
    key_name      = var.key_name 
    subnet_id     = var.subnet_id
    vpc_security_group_ids = var.security_group_ids
    tags = var.tags
}
