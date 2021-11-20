resource "aws_security_group" "terraform-ecs" {
  name        = "terraform-ecs"
  description = "Terraform terraform-ecs security group"

  dynamic "ingress" {
    for_each = var.ingress
    content {
      description = ingress.value["description"]
      from_port   = ingress.value["from_port"]
      to_port     = ingress.value["to_port"]
      protocol    = ingress.value["protocol"]
      cidr_blocks = ingress.value["cidr_blocks"]
    }
  }

  egress {
    description = "All Outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.allowed_range
  }

  tags = var.common_tags
}


variable "ingress" {
  default = [{
    description = "Default HTTPS port"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = var.allowed_range
  }]
}
