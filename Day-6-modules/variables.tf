variable "ami" {
  description = ""
    type        = string
}
variable "instance_type" {
    default = ""
    description = "Instance type for the EC2 instance"
    type        = string
  
}

variable "cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "null"
}

variable "subnet_id" {
  description = "Subnet ID for the EC2 instance"
  type        = string
  default     = ""
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
  default     = ""
}