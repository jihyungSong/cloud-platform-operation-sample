variable "ami_id" {}

variable "public_instance_name" {}
variable "private_instance_name" {}

variable "public_subnet_ids" {
    type        =   list
}

variable "private_subnet_ids" {
    type        =   list
}

variable "instance_type" {
    default     =   "t3.micro"
}

variable "ec2_keypair" {}
variable "public_security_group_id" {}
variable "private_security_group_id" {}

