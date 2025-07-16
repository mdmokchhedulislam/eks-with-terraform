terraform {
  
   backend "s3" {
    bucket = "terraform-backend-bucket-tfstate"
    key    = "eks/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
    # dynamodb_table = "terraform_locking"
  }
}