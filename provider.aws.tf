provider "aws" {
  region  = "eu-west-1"
  version = "2.68.0"
}

provider "local" {
  version = "~> 1.4"
}

provider "tls" {
  version = "~> 2.1"
}
