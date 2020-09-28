resource "aws_instance" "docker_host" {
  availability_zone = element(data.aws_availability_zones.available.zone_ids, 0)
  key_name          = aws_key_pair.terraform-ecs.key_name
  ami               = data.aws_ami.ubuntu.id
  instance_type     = var.instance_type

  root_block_device {
    volume_type           = "standard"
    volume_size           = 100
    delete_on_termination = true
    encrypted             = true
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
echo '#!/bin/bash\necho ECS_CLUSTER=${aws_ecs_cluster.terraform-ecs.name}' >> /etc/ecs/ecs.config
EOF

  security_groups = [aws_security_group.terraform-ecs.name]

  metadata_options {
    http_tokens = "required"
  }

  tags = var.common_tags
}
