terraform {
  required_providers {



    local = {
      source  = "hashicorp/local"
      version = "2.8.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "4.2.1"
    }
    http = {
      source  = "hashicorp/http"
      version = "3.5.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "6.43.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.8.1"
    }
  }
  required_version = ">= 1.3.0"
}
