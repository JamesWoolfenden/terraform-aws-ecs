resource "aws_ecs_task_definition" "cassandra" {
  family                = "cassandra"
  container_definitions = var.cassandra

}
