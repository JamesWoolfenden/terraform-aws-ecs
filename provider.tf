provider "aws" {
  version = "~> 1.43"
  region  = "${var.region}"
}

provider "tls" {
  version = "~> 1.2"
}
