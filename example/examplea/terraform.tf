terraform {
  required_providers {
    aws = {
      version = "3.2.0"
      source  = "hashicorp/aws"
    }
    random = {
      version = "2.2"
    }

    local = {
      version = "~> 1.4"
    }

    tls = {
      version = "~> 2.1"
    }

  }
}
