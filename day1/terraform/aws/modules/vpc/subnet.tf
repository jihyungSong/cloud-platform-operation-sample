# Subnet
resource "aws_subnet" "vpc_public_subnet" {
    count               =   length(var.vpc_public_subnets)
    vpc_id              =   aws_vpc.vpc.id
    availability_zone   =   lookup(var.vpc_public_subnets[count.index], "az")
    cidr_block          =   lookup(var.vpc_public_subnets[count.index], "cidr")

    tags                =   {
        Name            =   "${var.vpc_name}-${lookup(var.vpc_public_subnets[count.index], "name")}"
        Managed_by      =   "terraform"
        Tier            =   "public"
    }
}

resource "aws_subnet" "vpc_private_subnet" {
    count               =   length(var.vpc_private_subnets)
    vpc_id              =   aws_vpc.vpc.id
    availability_zone   =   lookup(var.vpc_private_subnets[count.index], "az")
    cidr_block          =   lookup(var.vpc_private_subnets[count.index], "cidr")
    
    tags                =   {
        Name            =   "${var.vpc_name}-${lookup(var.vpc_private_subnets[count.index], "name")}"
        Managed_by      =   "terraform"
        Tier            =   "private"
    }
}