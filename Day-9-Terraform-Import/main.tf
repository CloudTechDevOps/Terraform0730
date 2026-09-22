# resource "aws_instance" "dev" {
#   ami = "ami-0fef201115eefe936"
#   instance_type = "t2.medium"
#   tags = {
#     Name = "ec2"
#   }
# }

 #terraform import aws_instance.dev i-01122773ce6f11184

resource "aws_s3_bucket" "name" {
    bucket = "test-devtest-veera"
  
}
resource "aws_s3_bucket_versioning" "example_versioning" {
  bucket = aws_s3_bucket.name.id

  versioning_configuration {
    status = "Enabled"
  }
}