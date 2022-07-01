terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.15, < 5.0"

      configuration_aliases = [aws.bucket-region, aws.us-east-1]
    }

    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = ">= 3.15, < 4.0"
    }
  }
}
