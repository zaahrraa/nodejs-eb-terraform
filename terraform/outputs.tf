output "app_url" {
  description = "Public URL of the deployed application"
  value       = "http://${aws_elastic_beanstalk_environment.env.cname}"
}

output "environment_name" {
  description = "Name of the Elastic Beanstalk environment"
  value       = aws_elastic_beanstalk_environment.env.name
}

output "environment_status" {
  description = "Current status Terraform sees for the environment right after apply"
  value       = aws_elastic_beanstalk_environment.env.status
}

output "s3_bucket_name" {
  description = "S3 bucket storing application versions"
  value       = aws_s3_bucket.app_bucket.bucket
}
