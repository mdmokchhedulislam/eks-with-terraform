
# resource "aws_s3_bucket" "backend_bucket" {
#   bucket = "terraform-backend-bucket-tfstate"

#   tags = {
#     Name        = "store_bucket"

#   }
# }

resource "aws_dynamodb_table" "locking_dynamodb" {
  name             = "terraform_locking"
  hash_key         = "LockID"
  billing_mode     = "PAY_PER_REQUEST"

  attribute {
    name = "LockID"
    type = "S"
  }

 
}


module "vpc" {
  source = "./modules/vpc"

  vpc_cidr = var.vpc_cidr
  vpc_name = var.vpc_name
  public_subnet_name = var.public_subnet_name
  public_subnet_cidr_2 = var.public_subnet_cidr_2
  private_subnet_name = var.private_subnet_name
  internet_gateway_name = var.internet_gateway_name
  public_subnet_cidr_1 = var.public_subnet_cidr_1
  public_route_cidr = var.public_route_cidr

}

module "eks" {
  source     = "./modules/eks"
  subnet_ids = module.vpc.public_subnet_ids
}


