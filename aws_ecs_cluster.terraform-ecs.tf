resource "aws_ecs_cluster" "terraform-ecs" {
  name = var.name

  setting {
    name  = "containerInsights"
    value = "enabled"
  }
}
