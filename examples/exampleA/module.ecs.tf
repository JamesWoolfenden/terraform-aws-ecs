module "ecs" {
  source        = "../../"
  instance_type = "${var.instance_type}"
  docker-user   = "${var.docker-user}"
  docker-pass   = "${var.docker-pass}"
}
