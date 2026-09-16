resource "aws_vpc" "name" {
    cidr_block = var.vpc_cidr
    tags={
        Name ="vpc_tag"
    }
  
}

resource "aws_subnet" "dev"{
    cidr_block = var.subnet_cidr
    vpc_id = aws_vpc.name.id
    tags = {
        Name = "subnet_tag"
    }
}

resource "aws_instance" "web" {
  ami                    = "ami-0e34b50e714a297f1" #Amazon 2023 linux
  instance_type          = "t3.micro"
  subnet_id              = aws_subnet.dev.id
  tags = {
    Name = "web-server"
  }
}
