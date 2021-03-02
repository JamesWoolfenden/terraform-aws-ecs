module "ecs" {
  source        = "../../"
  common_tags   = var.common_tags
  docker-pass   = random_password.password.result
  allowed_range = [module.data.cidr]
  container     = file("./task-definitions/nginx.json")
  cassandra     = file("./task-definitions/cassandra.json")
}

module "data" {
  source  = "jameswoolfenden/ip/http"
  version = "0.3.1"
}
