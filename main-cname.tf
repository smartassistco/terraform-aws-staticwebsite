locals {
  root_domain = join(".", reverse(slice(reverse(split(".", var.domain_name)), 0, 2)))
  record_name = var.domain_name == local.root_domain ? var.domain_name : replace(var.domain_name, ".${local.root_domain}", "")
}

resource "cloudflare_record" "dns_record" {
  zone_id = var.cloudflare_zone_id
  name    = local.record_name
  value   = aws_cloudfront_distribution.cloudfront_distribution.domain_name
  type    = "CNAME"
  proxied = false
}
