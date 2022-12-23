# Terraform Block
terraform {
  cloud {
    organization = "prafect"

    workspaces {
      name = "static-web-circleci"
    }
  }
}
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.48.0"
    }
  }


# Provider Block
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}