vpc_cidr    = "10.0.0.0/16"
subnet_cidr = "10.0.0.0/24"


#terrafrom.tfvars file is used to define the values for the variables defined in the variables.tf file. In this case, it sets the CIDR block for the VPC and the subnet. The vpc_cidr variable is set to "10.0.0.0/16" and the subnet_cidr variable is set to "10.0.0.0/24".
#Name should be terraforrm.tfvars only 
# if dev.tfvars terraform apply -var-file="dev.tfvars"  
# if test.tfvars terraform apply -var-file="test.tfvars"