resource "aws_key_pair" "terraform-ecs" {
  key_name   = "terraform-ecs-${var.environment}"
  public_key = "${tls_private_key.terraform-ecs.public_key_openssh}"
}

resource "tls_private_key" "terraform-ecs" {
  rsa_bits  = "2048"
  algorithm = "RSA"
}
