resource "aws_ecs_service" "terraform-ecs-service-nginx" {
  name            = "terraform-ecs-service-nginx"
  cluster         = aws_ecs_cluster.terraform-ecs.id
  task_definition = aws_ecs_task_definition.nginx.arn
  desired_count   = 1
}
