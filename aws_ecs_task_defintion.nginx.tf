resource "aws_ecs_task_definition" "nginx" {
  family                = "nginx"
  container_definitions = var.container

  volume {
    host_path = "/var/run/docker.sock"
    name      = "volume-0"

    efs_volume_configuration {
      file_system_id          = aws_efs_file_system.examplea.id
      root_directory          = "/opt/data"
      transit_encryption      = "ENABLED"
      transit_encryption_port = 2999
      authorization_config {
        access_point_id = aws_efs_access_point.examplea.id
        iam             = "ENABLED"
      }
    }
  }
}


resource "aws_efs_file_system" "examplea" {
  # checkov:skip=CKV2_AWS_18: TODO
  # checkov:skip=CKV_AWS_184: TODO
  encrypted = true
}


resource "aws_efs_access_point" "examplea" {
  file_system_id = ""
}
