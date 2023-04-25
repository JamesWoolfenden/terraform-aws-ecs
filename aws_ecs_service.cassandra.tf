resource "aws_ecs_service" "cassandra" {
  name            = "cassandra"
  cluster         = aws_ecs_cluster.ecs.id
  task_definition = aws_ecs_task_definition.cassandra.arn
  desired_count   = 1
}
