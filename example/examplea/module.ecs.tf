module "ecs" {
  source        = "../../"
  common_tags   = var.common_tags
  docker-pass   = random_password.password.result
  allowed_range = [module.data.cidr]
  container     = file("./task-definitions/nginx.json")
  cassandra     = file("./task-definitions/cassandra.json")
  subnets       = ["subnet-09ff91b5b0adb1fd4", "subnet-05e87623a2a5c41f0"]
}

module "data" {
  source  = "jameswoolfenden/ip/http"
  version = "0.3.1"
}
