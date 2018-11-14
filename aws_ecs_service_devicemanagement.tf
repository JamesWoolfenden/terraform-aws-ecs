resource "aws_ecs_service" "devicemanagement" {
  name            = "devicemanagement"
  cluster         = "${aws_ecs_cluster.terraform-ecs.id}"
  task_definition = "${aws_ecs_task_definition.devicemanagement.arn}"
  desired_count   = "${var.devman-desiredcount}"
}
