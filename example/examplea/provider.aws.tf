provider "aws" {
  region  = "eu-west-1"
  version = "3.00.0"
}

provider "local" {
  version = "~> 1.4"
}

provider "tls" {
  version = "~> 2.1"
}

provider "random" {
  version = "2.3.0"
}
