module "ecs" {
  source      = "../../"
  common_tags = var.common_tags
  docker-pass = random_password.password.result
}
