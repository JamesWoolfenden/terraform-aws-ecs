
variable "git_hub_key" {
  description = "path to key for ssh"
  default     = "~/.ssh/github"
}

variable "region" {
  default = "eu-west-1"
}

variable "instance_type" {
  default = "m3.large"

  #m3.large
  #t2.micro
}

variable "environment" {
  default = "dev"
}

variable "domain" {
  default = "test.io"
}
variable "docker-email" {}

variable "docker-user" {}

variable "docker-pass" {}

variable "devman-desiredcount" {
  default = 1
}

variable "appstore-desiredcount" {
  default = 1
}

variable "admin-desiredcount" {
  default = 1
}

variable "aws_amis" {
  description = "These are Amazon Linux ami"

  default = {
    us-east-1      = "ami-ddc7b6b7"
    us-west-1      = "ami-a39df1c3"
    us-west-2      = "ami-d74357b6"
    eu-west-1      = "ami-f1b46b82"
    ap-northeast-1 = "ami-3077525e"
    ap-southeast-2 = "ami-23b4eb40"
  }
}

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

variable "availability_zones" {}
