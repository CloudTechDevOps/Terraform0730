
##provider version 
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.63.0" #aws provider version 
      #version = "<4.0.0"
    }
  }
}

## Local Terraform version 
terraform {
  required_version = ">= 1.0.0"
}