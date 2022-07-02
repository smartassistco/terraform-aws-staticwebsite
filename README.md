<!-- BEGIN_TF_DOCS -->
# AWS Static Website Terraform Module

## What does it do?

Creates a static website with all the necessary dependencies:

- S3 Bucket
- S3 Bucket Website Configuration
- IAM user with deploy permissions
- Validated ACM cert (in us-east-1)
- CloudFront distribution
- DNS record for domain name

**Currently, only supports Cloudflare for DNS records**

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.15, < 5.0 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | >= 3.15, < 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.15, < 5.0 |
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | >= 3.15, < 4.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_bucket"></a> [bucket](#module\_bucket) | smartassistco/s3website/aws | n/a |
| <a name="module_certificate"></a> [certificate](#module\_certificate) | smartassistco/cloudflare-validated-acm/aws | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_cloudfront_distribution.cloudfront_distribution](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution) | resource |
| [cloudflare_record.dns_record](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/record) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloudflare_zone_id"></a> [cloudflare\_zone\_id](#input\_cloudflare\_zone\_id) | The Zone ID for the DNS provider | `string` | n/a | yes |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | The domain name for the website, e.g. demo.example.com | `string` | n/a | yes |
| <a name="input_error_file"></a> [error\_file](#input\_error\_file) | The name of the error file in the S3 bucket | `string` | `"404.html"` | no |
| <a name="input_index_file"></a> [index\_file](#input\_index\_file) | The name of the error file in the S3 bucket | `string` | `"index.html"` | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | The name of the project, which will be used to create the S3 bucket and deploy user. e.g. demo-website | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_deploy_bucket"></a> [deploy\_bucket](#output\_deploy\_bucket) | The S3 bucket to deploy the website files |
| <a name="output_deploy_user_creds"></a> [deploy\_user\_creds](#output\_deploy\_user\_creds) | The AWS credentials for the deploy user |
<!-- END_TF_DOCS -->