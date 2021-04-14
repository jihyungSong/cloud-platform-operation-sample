provider "aws"{
    region                      =   var.aws_region
}

module "eks" {
    source                      =   "./modules/eks"
    eks_cluster_name            =   "${var.project_name}-eks-cluster"
    eks_cluster_role_arn        =   var.eks_cluster_role_arn
    pod_execution_role_arn      =   var.pod_execution_role_arn
    subnet_ids                  =   var.subnet_ids
    eks_fargate_profile_name    =   "${var.project_name}-eks-fargate"
    namespace                   =   "${var.project_name}-namespace"
}
