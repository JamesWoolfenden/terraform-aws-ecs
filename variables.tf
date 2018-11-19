variable "region" {
  default = "eu-west-1"
}

variable "instance_type" {}

variable "environment" {}

variable "domain" {}

variable "devman-desiredcount" {}

variable "appstore-desiredcount" {}

variable "admin-desiredcount" {}

variable "dnsname" {
  description = "mixed up dns names to environments"

  default = {
    support = "support.io"
    dev     = "dev.io"
    test    = "test.io"
    ops     = "ops.io"
  }
}

variable "zone_id" {}

variable "docker-user" {}
variable "docker-pass" {}
variable "docker-email" {}
data "aws_availability_zones" "available" {}
