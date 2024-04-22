terraform {
  backend "s3" {
    bucket         = "cluster1statefileupdate"
    key            = "mycluster1statefileupdate/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock2"
  }
}
