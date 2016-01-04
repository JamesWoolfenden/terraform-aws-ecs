#
# Launch Container Instance
#

resource "aws_instance" "docker-host" {
    availability_zone    = "${var.region}a"
    key_name             = "${aws_key_pair.terraform-ecs.key_name}"
    ami                  = "${lookup(var.aws_amis, var.region)}"
    instance_type        = "${var.instance_type}"
    root_block_device {
      volume_type = "standard"
      volume_size = 100
      delete_on_termination = 1
    }

    #so that code can be pulled out
    provisioner "file" {
       source = "${var.key_path}"
       destination = "${var.git_hub_key}"
       connection {
          user = "ec2-user"
          key_file="${var.key_path}"}
       }

    iam_instance_profile = "terraform-ecs-profile"

    #new login should refresh docker group, stands up docker containers
    provisioner "remote-exec" {
       inline =["sudo yum -y update"]
       connection {
            user = "ec2-user"
            key_file="${var.key_path}"}
    }

    provisioner "remote-exec" {
       inline =[ "echo 'export ECS_ENGINE_AUTH_TYPE=docker' >> /etc/ecs/ecs.config",
                 "echo 'export ECS_ENGINE_AUTH_DATA={\"https://index.docker.io/v1/\":{\"username\":\"${var.docker-user}\",\"password\":\"${var.docker-pass}\",\"email\":\"${var.docker-email}\"}}'  >> /etc/ecs/ecs.config"
                 ]

      connection {
        user = "ec2-user"
        key_file="${var.key_path}"}
    }

    provisioner "local-exec" {
        command = "echo config: > hosts\\${aws_instance.docker-host.public_ip} "
    }
    provisioner "local-exec" {
        command = "echo public_ip= ${aws_instance.docker-host.public_ip} >> hosts\\${aws_instance.docker-host.public_ip}"
    }
    provisioner "local-exec" {
        command = "echo private_ip= ${aws_instance.docker-host.private_ip} >> hosts\\${aws_instance.docker-host.public_ip}"
    }

    tags  = {
        "Name"        = "terraform-ecs-${var.environment}"
        "Environment" = "${var.environment}"
    }
    security_groups=["${aws_security_group.terraform-ecs.name}"]

    user_data="#!/bin/bash\necho ECS_CLUSTER=${aws_ecs_cluster.terraform-ecs.name} >> /etc/ecs/ecs.config"
}
