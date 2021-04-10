# Route table
resource "aws_route_table" "vpc_public_rtable" {
    vpc_id              =   aws_vpc.vpc.id

    route {
        cidr_block      =   "0.0.0.0/0"
        gateway_id      =   aws_internet_gateway.vpc_igw.id
    }

    tags                =   {
        Name            =   "${var.vpc_name}-public-rt"
        Managed_by      =   "terraform"
    }
}

resource "aws_route_table" "vpc_private_rtable" {
    vpc_id              =   aws_vpc.vpc.id

    route {
        cidr_block      =   "0.0.0.0/0"
        nat_gateway_id  =   aws_nat_gateway.vpc_ngw.id
    }

    tags                =   {
        Name            =   "${var.vpc_name}-private-rt"
        Managed_by      =   "terraform"
    }
}

resource "aws_route_table_association" "vpc_public_rtable_association" {
    count           =   length(var.vpc_public_subnets)

    subnet_id       =   aws_subnet.vpc_public_subnet.*.id[count.index]
    route_table_id  =   aws_route_table.vpc_public_rtable.id
}

resource "aws_route_table_association" "vpc_private_rtable_association" {
    count           =   length(var.vpc_private_subnets)

    subnet_id       =   aws_subnet.vpc_private_subnet.*.id[count.index]
    route_table_id  =   aws_route_table.vpc_private_rtable.id
}