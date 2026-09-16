terraform {
  backend "s3" {
    bucket = "veera-nit-devopos-cloud"
    key    = "terraform-statefile/terraform.tfstate"
    region = "us-east-1"
  }
}
