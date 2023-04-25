terraform {
  required_providers {
    aws = {
      version = "4.62.0"
      source  = "hashicorp/aws"
    }
    random = {
      version = "3.1.0"
      source  = "hashicorp/random"
    }

    local = {
      version = "2.1.0"
      source  = "hashicorp/local"
    }

    tls = {
      version = "4.0.4"
      source  = "hashicorp/tls"
    }

    http = {
      source  = "hashicorp/http"
      version = "3.2.1"
    }
  }
  required_version = ">= 1.3.0"
}
