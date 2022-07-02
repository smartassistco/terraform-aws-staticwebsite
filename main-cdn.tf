# CloudFront Distribution
resource "aws_cloudfront_distribution" "cloudfront_distribution" {
  enabled         = true
  is_ipv6_enabled = true

  viewer_certificate {
    cloudfront_default_certificate = false
    acm_certificate_arn            = module.certificate.validated_certificate.certificate_arn
    minimum_protocol_version       = "TLSv1.2_2021"
    ssl_support_method             = "sni-only"
  }

  aliases = [var.domain_name]

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  origin {
    domain_name = module.bucket.website_endpoint
    origin_id   = "S3StaticWebsiteOrigin"

    custom_origin_config {
      origin_protocol_policy = "http-only"
      http_port              = 80
      https_port             = 443
      origin_ssl_protocols   = ["TLSv1.2"]
    }
  }

  default_cache_behavior {
    target_origin_id       = "S3StaticWebsiteOrigin"
    compress               = true
    viewer_protocol_policy = "redirect-to-https"

    allowed_methods = ["GET", "HEAD"]
    cached_methods  = ["GET", "HEAD"]

    min_ttl     = 0
    default_ttl = 600
    max_ttl     = 600

    forwarded_values {
      query_string = false

      cookies {
        forward = "none"
      }
    }
  }
}
