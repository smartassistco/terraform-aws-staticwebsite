terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.15, < 5.0"
    }

    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = ">= 3.15, < 4.0"
    }
  }
}
