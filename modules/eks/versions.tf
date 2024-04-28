terraform {
  required_version = ">= 1.0.0"
}

module "aws" {
  version = ">= 4.0.0"
  source  = "terraform-aws-modules/aws/aws"
}