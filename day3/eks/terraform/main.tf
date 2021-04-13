provider "aws"{
    region              =   var.aws_region
}

module "eks" {
    source              =   "./modules/eks"
    eks_cluster_name    =   "${var.project_name}-eks-cluster"
    subnet_ids          =   var.subnet_ids
}
