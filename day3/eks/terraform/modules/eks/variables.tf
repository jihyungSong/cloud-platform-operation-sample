variable "eks_cluster_name" {}
variable "subnet_ids" {
    type    =   list
}
variable "eks_cluster_role_arn" {}
variable "pod_execution_role_arn" {}
variable "eks_fargate_profile_name" {}
variable "namespace" {}