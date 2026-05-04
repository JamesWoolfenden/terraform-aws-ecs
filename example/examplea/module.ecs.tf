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
  source = "git::https://github.com/JamesWoolfenden/terraform-http-ip.git?ref=2f3cef24e667fb840a3d3481f5a1aaa5a1ac7d28" #v0.3.14
}
