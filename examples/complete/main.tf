module "sample_website" {
  source = "smartassistco/staticwebsite/aws"

  project_name       = "sample-website"
  domain_name        = "testing.example.com"
  cloudflare_zone_id = "xxxxxxxxxxxxxxxxxx"

  providers = {
    aws.bucket-region = aws,
    aws.us-east-1     = aws.useast1
  }
}
