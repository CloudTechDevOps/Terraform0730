module "network" {
    source = "../../modules/network"
    vpc_cidr = "10.0.0.0/24"
    subnet_cidr = "10.0.0.0/24"
  
}

module "compute" {
    source = "../../modules/compute"
    ami = "ami-0e34b50e714a297f1"
    instance_type = "t2.micro"
    subnet_id = module.network.subnet_id
}
