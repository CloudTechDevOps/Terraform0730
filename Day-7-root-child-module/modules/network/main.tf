resource "aws_vpc" "name" {
    cidr_block = var.vpc_cidr
    
}

resource "aws_subnet" "dev"{
    cidr_block = var.subnet_cidr
    vpc_id = aws_vpc.name.id
    
}

output subnet_id {
    value = aws_subnet.dev.id
}