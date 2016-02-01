resource "aws_ecs_service" "terraform-ecs-service-partnerportal" {
  name = "terraform-ecs-service-partnerportal"
  cluster = "${aws_ecs_cluster.terraform-ecs.id}"
  task_definition = "${aws_ecs_task_definition.partnerportal.arn}"
  desired_count = "${var.admin-desiredcount}"
/*  iam_role = "arn:aws:iam::273367247019:role/ecsServiceRole"
 depends_on = ["aws_iam_role_policy.ecsServicePolicy"]*/
/*
  load_balancer {
    elb_name = "${aws_elb.admin.id}"
    container_name = "partnerportal"
    container_port = 9000
  }*/
}
