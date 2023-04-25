resource "aws_key_pair" "ecs" {
  key_name   = "terraform-ecs"
  public_key = tls_private_key.ecs.public_key_openssh
}

resource "tls_private_key" "ecs" {
  rsa_bits  = "2048"
  algorithm = "RSA"
}
