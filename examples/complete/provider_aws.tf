provider "aws" {
  region = "eu-west-1"
}

provider "aws" {
  alias = "useast1"
  region = "us-east-1"
}
