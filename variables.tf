variable "project_name" {
  description = "The name of the project, which will be used to create the S3 bucket and deploy user. e.g. demo-website"
  type        = string
}

variable "index_file" {
  description = "The name of the error file in the S3 bucket"
  type        = string
  default     = "index.html"
}

variable "error_file" {
  description = "The name of the error file in the S3 bucket"
  type        = string
  default     = "404.html"
}

variable "domain_name" {
  description = "The domain name for the website, e.g. demo.example.com"
  type        = string
}

variable "cloudflare_zone_id" {
  description = "The Zone ID for the DNS provider"
  type        = string
}
