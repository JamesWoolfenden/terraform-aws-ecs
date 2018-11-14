resource "aws_instance" "docker-host" {
  availability_zone = "${var.region}a"
  key_name          = "${aws_key_pair.terraform-ecs.key_name}"
  ami               = "${lookup(var.aws_amis, var.region)}"
  instance_type     = "${var.instance_type}"

  root_block_device {
    volume_type           = "standard"
    volume_size           = 100
    delete_on_termination = 1
  }

  iam_instance_profile = "ecsInstanceRole"

  #new login should refresh docker group, stands up docker containers
  user_data = <<EOF
sudo yum -y update
sudo chmod 666 /etc/ecs/ecs.config
echo 'ECS_ENGINE_AUTH_TYPE=docker' >> /etc/ecs/ecs.config
echo 'ECS_ENGINE_AUTH_DATA={\"https://index.docker.io/v1/\":{\"username\":\"${var.docker-user}\",\"password\":\"${var.docker-pass}\",\"email\":\"${var.docker-email}\"}}'  >> /etc/ecs/ecs.config"
echo 'ECS_CLUSTER=${aws_ecs_cluster.terraform-ecs.name}' >> /etc/ecs/ecs.config
chmod 644 /etc/ecs/ecs.config
echo 'export DB_HOST1_PORT_9042_TCP_ADDR=${aws_instance.docker-host.public_dns}' >> ~/.bashrc
echo 'export DNSNAME=${lookup(var.dnsname, var.environment)}' >> ~/.bashrc
echo '#!/bin/bash\necho ECS_CLUSTER=${aws_ecs_cluster.terraform-ecs.name}' >> /etc/ecs/ecs.config
EOF


  security_groups = ["${aws_security_group.terraform-ecs.name}"]

  tags = {
    "Name"        = "terraform-ecs-${var.environment}"
    "Environment" = "${var.environment}"
  }
}
