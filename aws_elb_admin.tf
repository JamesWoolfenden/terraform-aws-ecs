# Create a new load balancer
resource "aws_elb" "admin" {
  name               = "admin"
  availability_zones = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]

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

    /*  ssl_certificate_id = "arn:aws:iam::123456789012:server-certificate/certName"*/
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

  instances                   = ["${aws_instance.docker-host.id}"]
  cross_zone_load_balancing   = true
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400

  security_groups = ["${aws_security_group.terraform-ecs.id}"]
  depends_on      = ["aws_instance.docker-host"]

  tags = {
    "Environment" = "${var.environment}"
  }
}
