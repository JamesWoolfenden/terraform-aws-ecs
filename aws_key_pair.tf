resource "aws_key_pair" "terraform-ecs" {
  key_name   = "terraform-ecs-${var.environment}"
  public_key = "${var.public_key}"
}
