# 1. Define the AWS Provider and version
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Uses the modern v5.x AWS provider
    }
  }
  required_version = ">= 1.0.0"
}

# 2. Configure the AWS Provider region
provider "aws" {
  region = "us-east-1" # Changes this to your preferred region
}

# 3. Create a unique Amazon S3 Bucket
resource "aws_s3_bucket" "my_demo_bucket" {
  bucket = "my-unique-terraform-demo-bucket-2026" # S3 names must be globally unique

  tags = {
    Name        = "My Terraform Bucket"
    Environment = "Dev"
  }
}