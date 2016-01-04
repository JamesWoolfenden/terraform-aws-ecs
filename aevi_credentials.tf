provider "aws" {
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
    region     = "${var.region}"
}

resource "aws_key_pair" "terraform-ecs" {
  key_name = "terraform-ecs-${var.environment}" 
  public_key ="${var.public_key}"
}

