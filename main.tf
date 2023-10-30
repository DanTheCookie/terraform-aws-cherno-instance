terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.23.0"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  shared_credentials_file = "~/.aws/credentials"
  region     = "eu-central-1"
}

