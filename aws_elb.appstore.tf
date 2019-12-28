# Create a new load balancer
resource "aws_elb" "appstore" {
  name               = "appstore"
  availability_zones = [data.aws_availability_zones.available.names]

  listener {
    instance_port     = 8002
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  access_logs {
    bucket        = "elb-logs"
    bucket_prefix = "appstore"
    interval      = 60
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:80/"
    interval            = 30
  }

  instances                   = [aws_instance.docker_host.id]
  cross_zone_load_balancing   = true
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400
  security_groups             = [aws_security_group.terraform-ecs.id]
  depends_on                  = ["aws_instance.docker_host"]

  tags = {}
}
