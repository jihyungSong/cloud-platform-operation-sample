variable "alb_name" {}
variable "alb_target_group" {}
variable "security_group_id" {}
variable "vpc_id" {}
variable "subnets" {
    type    =   list
}
