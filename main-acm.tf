# Certificate
module "certificate" {
  source = "smartassistco/cloudflare-validated-acm/aws"

  cloudflare_zone_id = var.cloudflare_zone_id
  domain_name        = var.domain_name

  providers = {
    aws = aws.us-east-1
  }
}
