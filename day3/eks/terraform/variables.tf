variable "aws_region" {}
variable "project_name" {}
variable "eks_cluster_role_arn" {}
variable "pod_execution_role_arn" {}
variable "subnet_ids" {
    type    =   list
}