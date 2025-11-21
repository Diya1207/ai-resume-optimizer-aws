################################################
# terraform/outputs.tf
################################################

output "s3_bucket_name" {
  description = "Name of the S3 bucket created for resumes"
  value       = aws_s3_bucket.resumes.id
}

output "aws_region" {
  description = "AWS region used"
  value       = var.aws_region
}
