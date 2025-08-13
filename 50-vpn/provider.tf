terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0.0"
    }
  }

  backend "s3" {
    bucket         = "lab-remotestate"
    key            = "expense-vpn-dev"
    region         = "us-east-1"
    dynamodb_table = "lab-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}