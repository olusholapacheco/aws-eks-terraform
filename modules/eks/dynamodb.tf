resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock3"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name        = "Terraform State Lock Table 3"
    Environment = "Test"
  }
}