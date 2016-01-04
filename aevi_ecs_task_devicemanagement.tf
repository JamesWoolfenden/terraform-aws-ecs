resource "aws_ecs_task_definition" "devicemanagement" {
  family = "devicemanagement"
  container_definitions = "${file("task-definitions/devicemanagement.json")}"
  depends_on = ["aws_ecs_task_definition.cassandra"]
}
