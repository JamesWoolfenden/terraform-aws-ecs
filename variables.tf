variable "access_key" {
  description  ="AWS access key"
}

variable "secret_key" {
  description  ="AWS secret"
}

variable "s3_access_key" {
  description  ="TF_VAR_s3_access_key"
}

variable "s3_secret_key" {
  description  ="TF_VAR_s3_secret_key"
}

variable "key_path" {
   description  ="path to key for ssh"
   default="C:\\Users\\James\\.ssh\\cassandra"
}

variable "git_hub_key" {
   description  ="path to key for ssh"
   default="~/.ssh/github"
}

variable "region" {
    default = "eu-west-1"
}

variable "instance_type" {
   default="m3.large"
   #m3.large
   #t2.micro
}

variable "environment" {
  default="dev"
}

variable "domain" {
  default ="aevi-test.io"
}

variable "devman-desiredcount" {
  default=1
}

variable "appstore-desiredcount" {
  default=1
}

variable "admin-desiredcount" {
  default=1
}

