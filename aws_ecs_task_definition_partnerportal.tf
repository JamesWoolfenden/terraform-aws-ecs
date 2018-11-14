resource "aws_ecs_task_definition" "partnerportal" {
  family                = "partnerportal"
  container_definitions = "${file("task-definitions/partnerportal.json")}"
}
