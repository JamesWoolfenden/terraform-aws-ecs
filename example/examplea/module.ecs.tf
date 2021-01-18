module "ecs" {
  source        = "../../"
  common_tags   = var.common_tags
  docker-pass   = random_password.password.result
  allowed_range = module.data.cidr
}

module "data" {
  source  = "jameswoolfenden/ip/http"
  version = "0.3.1"
}
