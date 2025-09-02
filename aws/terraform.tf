terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 6.0"
    }
  }

  required_version = ">= 1.2"
}

provider "aws" {
    region = "ap-northeast-1"
    profile = "personal-tf-admin"
}