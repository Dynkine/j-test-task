terraform {
  required_version = ">1.2.7"

  required_providers {
    google = {
      source = "hashicorp/google"
      version = "~> 4.34.0"
    }
  }
  backend "s3" {
    bucket  = "jifiti-home-task"
    key    = "terraform/state"
    region = "us-east-1"
 }
}

provider "aws" {
  region = var.region

  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}