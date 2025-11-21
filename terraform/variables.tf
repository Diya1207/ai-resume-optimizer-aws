################################################
# terraform/variables.tf
################################################

variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Deployment environment name"
  type        = string
  default     = "dev"
}

variable "s3_bucket_name" {
  description = "S3 bucket name for storing resumes"
  type        = string
  default     = "ai-resume-optimizer-resumes-<your-unique-suffix>"
}
