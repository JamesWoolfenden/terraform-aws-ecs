resource "aws_ecs_task_definition" "cassandra" {
  family                = "cassandra"
  container_definitions = file("${path.module}/task-definitions/cassandra.json")
}
