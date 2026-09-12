resource "aws_vpc" "name" {
    cidr_block = var.cidr
    tags={
        Name = var.name_tags   
    }
  
}

resource "aws_subnet" "dev"{
    cidr_block = var.subnet_cidr
    vpc_id = aws_vpc.name.id
    tags = {
        Name = var.subnet_tag
    }
}
