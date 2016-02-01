resource "aws_ecs_service" "terraform-ecs-service-devicemanagement" {
  name = "terraform-ecs-service-devicemanagement"
  cluster = "${aws_ecs_cluster.terraform-ecs.id}"
  task_definition = "${aws_ecs_task_definition.devicemanagement.arn}"
  desired_count = "${var.devman-desiredcount}"
  /*iam_role = "arn:aws:iam::273367247019:role/ecsServiceRole"

  load_balancer {
    elb_name = "${aws_elb.devicemanagement.id}"
    container_name = "devicemanagement"
    container_port = 9000
  }*/
}
