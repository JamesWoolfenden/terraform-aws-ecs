# Create a new load balancer
resource "aws_elb" "admin" {
  name               = "admin"
  availability_zones = data.aws_availability_zones.available.names

  listener {
    instance_port     = 8001
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  listener {
    instance_port     = 8001
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:80/"
    interval            = 30
  }

  access_logs {
    bucket        = "elb-logs.test"
    bucket_prefix = "admin"
    interval      = 60
  }

  instances                   = [aws_instance.docker_host.id]
  cross_zone_load_balancing   = true
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400

  security_groups = [aws_security_group.terraform-ecs.id]
  depends_on      = [aws_instance.docker_host]

  tags = {}
}
