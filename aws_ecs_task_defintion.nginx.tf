resource "aws_ecs_task_definition" "nginx" {
  family                = "nginx"
  container_definitions = file("task-definitions/nginx.json")

  volume {
    host_path = "/var/run/docker.sock"
    name      = "volume-0"
  }
}
