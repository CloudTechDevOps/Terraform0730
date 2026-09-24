variable "tag" {
    default = ["dev", "prod"]
    type = list(string)
  
}

resource "aws_instance" "name" {
  ami = "ami-0e34b50e714a297f1"
  instance_type = "t2.micro"
  for_each =   toset(var.tag)
  tags = {
    Name = each.key
  }

}