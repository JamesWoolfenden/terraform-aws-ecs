variable "access_key" {
  description  ="AWS access key"
}

variable "secret_key" {
  description  ="AWS secret"
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
}
variable "environment" {
  default="dev"
}

variable "domain" {
  default ="aevi-test.io"
}
