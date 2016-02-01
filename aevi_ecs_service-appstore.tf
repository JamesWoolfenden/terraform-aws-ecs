resource "aws_ecs_service" "terraform-ecs-service-appstore" {
  name = "terraform-ecs-service-appstore"
  cluster = "${aws_ecs_cluster.terraform-ecs.id}"
  task_definition = "${aws_ecs_task_definition.appstore.arn}"
  desired_count = "${var.appstore-desiredcount}"
  /*iam_role = "${aws_iam_role.ecsServiceRole.arn}"*/
  depends_on = ["aws_iam_role_policy.ecsServicePolicy"]

  load_balancer {
    elb_name = "${aws_elb.appstore.id}"
    container_name = "appstore"
    container_port = 9000
  }*/
}
