locals {
  bucket = "wertyuizxcfvgh"
  region = "us-east-1"
  env ="dev"
}

provider "aws" {
    profile = local.env
    
  
}
resource "aws_s3_bucket" "name" {
    bucket = local.bucket
    region = local.region

    
    
  
}

#example-2

# provider "aws" {
#   region = "us-east-1"
# }

# locals {
#   project     = "myapp"
#   environment = "dev"

#   common_tags = {
#     Project     = local.project
#     Environment = local.environment
#     ManagedBy   = "Terraform"
#   }

#   instance_name = "${local.project}-${local.environment}-server"
# }

# resource "aws_instance" "app" {
#   ami           = "ami-xxxxxxxx"
#   instance_type = "t3.micro"

#   tags = merge(
#     local.common_tags,
#     {
#       Name = local.instance_name
#     }
#   )
# }