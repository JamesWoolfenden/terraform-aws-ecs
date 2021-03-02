variable "region" {
  default = "eu-west-1"
}

variable "instance_type" {
  type = string

  description = "Size of host instance"
  default     = "t3.micro"
}

variable "docker-email" {
  description = "description"
  default     = "description"
}

variable "docker-user" {
  description = ""
  default     = "admin"
}

variable "docker-pass" {}

variable "common_tags" {
  default = {
    Name = "terraform-ecs"
  }
}

variable "allowed_range" {
  description = "IP ranges allowed to connect"
  type        = list(any)
}


variable "name" {
  type        = string
  description = "(optional) describe your variable"
  default     = "terraform-ecs"
}

variable "container" {

}

variable "cassandra" {

}