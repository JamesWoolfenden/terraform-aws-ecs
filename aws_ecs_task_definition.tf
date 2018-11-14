resource "aws_ecs_task_definition" "appstore" {
  family                = "appstore"
  container_definitions = "${file("task-definitions/appstore.json")}"
}
