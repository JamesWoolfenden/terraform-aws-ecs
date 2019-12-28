variable "region" {
  default = "eu-west-1"
}

variable "instance_type" {}

variable "docker-email" {
  description = "description"
  default     = "description"
}

variable "docker-user" {}

variable "docker-pass" {}

variable "common_tags" {
  default = {
    Name = "terraform-ecs"
  }
}

variable "allowed_range" {
  description = "IP ranges allowed to connect"
  type        = list
  default     = ["0.0.0.0/0"]
}
