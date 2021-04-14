# resource "aws_iam_role" "eks_cluster_role" {
#   name = "${var.eks_cluster_name}-role"

#   assume_role_policy = file("${path.module}/iam_role/eks_cluster_role.json")
# }

# resource "aws_iam_role_policy_attachment" "eks_cluster_policy" {
#   policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
#   role       = aws_iam_role.eks_cluster_role.name
# }

# # Optionally, enable Security Groups for Pods
# # Reference: https://docs.aws.amazon.com/eks/latest/userguide/security-groups-for-pods.html
# resource "aws_iam_role_policy_attachment" "eks_vpc_resource_controller" {
#   policy_arn = "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"
#   role       = aws_iam_role.eks_cluster_role.name
# }

# resource "aws_iam_role" "eks_fargate_role" {
#   name = "${var.eks_cluster_name}-role"

#   assume_role_policy = file("${path.module}/iam_role/eks_fargate_role.json")
# }

# resource "aws_iam_role_policy_attachment" "eks_fargate_policy" {
#   policy_arn = "arn:aws:iam::aws:policy/AmazonEKSFargatePodExecutionRolePolicy"
#   role       = aws_iam_role.eks_fargate_policy.name
# }