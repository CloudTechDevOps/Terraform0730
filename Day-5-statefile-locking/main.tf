resource "aws_vpc" "name" {
    cidr_block = "10.0.0.0/16"
    tags={
        Name ="vpc_tag"
    }
  
}

resource "aws_subnet" "dev"{
    cidr_block = "10.0.0.0/24"
    vpc_id = aws_vpc.name.id    
}

resource "aws_instance" "name" {
    ami                    = "ami-0e34b50e714a297f1" #Amazon 202
    instance_type          = "t2.micro"
    subnet_id              = aws_subnet.dev.id
  
}

resource "aws_security_group" "name" {
    name        = "my-security-group"
    description = "Allow SSH and HTTP traffic"
    vpc_id      = aws_vpc.name.id
  
    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
}