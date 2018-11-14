resource "aws_ecs_service" "service-partnerportal" {
  name            = "service-partnerportal"
  cluster         = "${aws_ecs_cluster.terraform-ecs.id}"
  task_definition = "${aws_ecs_task_definition.partnerportal.arn}"
  desired_count   = "${var.admin-desiredcount}"
}
