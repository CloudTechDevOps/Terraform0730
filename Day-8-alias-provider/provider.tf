provider "aws" {
  region = "us-east-1"
  profile = "dev_profile"
  alias = "dev"
  
}

provider "aws" {
    region = "us-west-2"
    profile = "dev_profile"  #if different account profile change here 
    alias = "test"
  
}