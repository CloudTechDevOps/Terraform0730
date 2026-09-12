variable "cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "name_tags" {
  description = "Name tag for the VPC"
  type        = string
  default     = "dev-vpc"
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "subnet_tag" {
  description = "Name tag for the subnet"
  type        = string
  default     = "dev-subnet"
}
