terraform {
  backend "s3" {
    bucket         = "cluster1statefile"
    key            = "mycluster1statefile/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock2"
  }
}
