resource "aws_ecs_service" "terraform-ecs-service-nginx" {
  name = "terraform-ecs-service-nginx"
  cluster = "${aws_ecs_cluster.terraform-ecs.id}"
  task_definition = "${aws_ecs_task_definition.nginx.arn}"
  desired_count = 1
  /*iam_role = "${aws_iam_role.ecsServiceRole.arn}"*/
  depends_on = ["aws_iam_role_policy.ecsServicePolicy"]

/*  load_balancer {
    elb_name = "${aws_elb.aevi-app.id}"
    container_name = "nginx-proxy"
    container_port = 80
  }*/
}
