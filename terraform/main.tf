################################################
# terraform/main.tf
# Minimal starter for AWS provider and an S3 bucket
################################################

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.3"
}

provider "aws" {
  region = var.aws_region
}

# Sample S3 bucket for resumes
resource "aws_s3_bucket" "resumes" {
  bucket = var.s3_bucket_name
  acl    = "private"
  tags = {
    Name = "ai-resume-optimizer-resumes"
    Env  = var.environment
  }
}
