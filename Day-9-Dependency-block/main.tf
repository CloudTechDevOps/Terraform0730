provider "aws" {
  
}

resource "aws_vpc" "name" {
    cidr_block = "10.0.0.0/24"
    depends_on = [ aws_s3_bucket.name ] #explicitily 
  
}

resource "aws_s3_bucket" "name" {
    bucket = "test-devtest-veera"
  
}

#By default Terraform follow implicit process we can even control explicitliy by adding depends on block 