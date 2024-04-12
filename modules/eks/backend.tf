terraform {
  backend "s3" {
    bucket         = "myterraformstatefilebucket-s3"
    key            = "myterraformstatefile/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock2"
  }
}