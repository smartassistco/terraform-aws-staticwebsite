output "deploy_bucket" {
  description = "The S3 bucket to deploy the website files"
  value       = module.s3website.deploy_bucket
}

output "deploy_user_creds" {
  description = "The AWS credentials for the deploy user"
  value       = module.s3website.deploy_user_creds
  sensitive   = true
}
