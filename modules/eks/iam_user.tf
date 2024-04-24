provider "aws" {
  region = var.region 
}

resource "aws_iam_user" "audit_user" {
  name = "audit"
}
