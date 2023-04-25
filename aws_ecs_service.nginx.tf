resource "aws_ecs_service" "nginx" {
  name            = "terraform-ecs-service-nginx"
  cluster         = aws_ecs_cluster.ecs.id
  task_definition = aws_ecs_task_definition.nginx.arn
  desired_count   = 1
  network_configuration {
    assign_public_ip = false
    subnets          = var.subnets
  }
}

variable "subnets" {
  type = list(string)
}
