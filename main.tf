terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.9.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1" # Define region as per your account
}

resource "aws_s3_bucket" "K21_CI_CD_Bucket" {
  bucket = "ajmal-demo-github-action-tf"

  object_lock_enabled = false

  tags = {
    Environment = "Prod"
  }
}
