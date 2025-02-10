
terraform {
  backend "s3" {
    bucket         = "not-to-be-delete-bucket"
    key            = "week10/terraform.tfstate"
    dynamodb_table = "terraform-lock-not-to-deleted"
    region         = "us-east-1"
    encrypt        = true
  }
}