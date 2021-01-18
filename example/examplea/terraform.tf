terraform {
  required_providers {
    aws = {
      version = "3.24.1"
      source  = "hashicorp/aws"
    }
    random = {
      version = "3.0.1"
      source  = "hashicorp/random"
    }

    local = {
      version = "2.0.0"
      source  = "hashicorp/local"
    }

    tls = {
      version = "3.0.0"
      source  = "hashicorp/tls"
    }

    http = {
      source  = "hashicorp/http"
      version = "2.0.0"
    }
  }
}
