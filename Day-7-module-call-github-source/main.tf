module "gitsource" {
    source = "github.com/CloudTechDevOps/Terraform0730/Day-6-modules"
    ami = "ami-0e34b50e714a297f1"
    instance_type = "t2.micro"
  
}