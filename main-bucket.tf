module "bucket" {
  source = "smartassistco/s3website/aws"

  project_name = var.project_name
  index_file   = var.index_file
  error_file   = var.error_file

  providers = {
    aws = aws.bucket-region
  }
}
