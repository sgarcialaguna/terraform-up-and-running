provider "aws" {
  version = "~> 2.0"
  region  = "us-east-2"
}


terraform {
  required_version = "~> 0.12.0"
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "beer_war"

    workspaces {
      name = "my-app"
    }
  }
}
