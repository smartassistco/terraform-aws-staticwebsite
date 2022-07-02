output "deploy_bucket" {
  description = "The S3 bucket to deploy the website files"
  value       = module.bucket.deploy_bucket
}

output "deploy_user_creds" {
  description = "The AWS credentials for the deploy user"
  value       = module.bucket.deploy_user_creds
  sensitive   = true
}
