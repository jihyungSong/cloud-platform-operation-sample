# Internet Gateway
resource "aws_internet_gateway" "vpc_igw" {
    vpc_id              =   aws_vpc.vpc.id

    tags                =    {
        Name            =   "${var.vpc_name}-igw"
        Managed_by      =   "terraform"
    }
}


# NAT gateway
resource "aws_eip" "eip_ngw" {
  vpc       =   true

  tags      =   {
      Name            =   "${var.vpc_name}-nat-eip"
      Managed_by      =   "terraform"
  }
}

resource "aws_nat_gateway" "vpc_ngw" {
  allocation_id =   aws_eip.eip_ngw.id
  subnet_id     =   aws_subnet.vpc_public_subnet.*.id[0]

  tags          =   {
      Name            =   "${var.vpc_name}-nat-gateway"
      Managed_by      =   "terraform"
  }
}
