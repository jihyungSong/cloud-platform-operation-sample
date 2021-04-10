variable "vpc_name" {}
variable "vpc_cidr_block" {}

variable "vpc_public_subnets" {
    type = list(object({
        az          = string
        cidr        = string
        name        = string
    }))
    description     =   "Subnet list to use for network to connect to the internet in this VPC"
}

variable "vpc_private_subnets" {
    type = list(object({
        az          = string
        cidr        = string
        name        = string
    }))
    description     =   "CIDR Blocks of subnet to use for internal network in this VPC"
}

