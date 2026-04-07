terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "our-terraform-tfstate-file-bucket-6150"
    key            = "Server-terraform"
    region         = "ap-south-1"
    dynamodb_table = "my-dynamo-db-practice-1"
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws_region
}
