aws_region                      =   ""
project_name                    =   ""

cloud9_ip                       =   ""

ami_id                          =   ""
ec2_keypair                     =   ""
vpc_cidr_block                  =   "172.16.0.0/16"
vpc_public_subnets              =   [
    {
        "az"                    =   ""
        "cidr"                  =   "172.16.1.0/24"
        "name"                  =   "public-subnet-1"
    },
    {
        "az"                    =   ""
        "cidr"                  =   "172.16.2.0/24"
        "name"                  =   "public-subnet-2"
    },
    {
        "az"                    =   ""
        "cidr"                  =   "172.16.3.0/24"
        "name"                  =   "public-subnet-3"
    },
]

vpc_private_subnets             =   [
    {
        "az"                    =   ""
        "cidr"                  =   "172.16.4.0/24"
        "name"                  =   "private-subnet-4"
    },
    {
        "az"                    =   ""
        "cidr"                  =   "172.16.5.0/24"
        "name"                  =   "private-subnet-5"
    },
    {
        "az"                    =   ""
        "cidr"                  =   "172.16.6.0/24"
        "name"                  =   "private-subnet-6"
    },
]


