variable "access_key" {
  description = "AWS access key"
}

variable "secret_key" {
  description = "AWS secret"
}

variable "s3_access_key" {
  description = "TF_VAR_s3_access_key"
}

variable "s3_secret_key" {
  description = "TF_VAR_s3_secret_key"
}

variable "key_path" {
  description = "path to key for ssh"
  default     = "C:\\Users\\James\\.ssh\\cassandra"
}

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
  default = "aevi-test.io"
}

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
    eu-central-1   = ""
    ap-southeast-1 = ""
    ap-northeast-1 = "ami-3077525e"
    ap-southeast-2 = "ami-23b4eb40"
    sa-east-1      = ""
  }
}

variable "dnsname" {
  description = "mixed up dns names to environments"

  default = {
    support = "aevi-test.io"
    dev     = "dev.aevi-test.io"
    test    = "test.aevi-test.io"
    ops     = "ops.aevi-test.io"
  }
}

variable "zone_id" {}
