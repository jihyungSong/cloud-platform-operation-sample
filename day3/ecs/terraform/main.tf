provider "aws"{
    region              =   var.aws_region
}

module "security_group" {
    source              =   "./modules/security_group"
    sg_prefix           =   var.project_name
    vpc_id              =   var.vpc_id
}

module "alb" {
    source              =   "./modules/alb"
    alb_name            =   var.project_name}-alb
    alb_target_group    =   var.project_name}-alb-tg
    security_group_id   =   module.security_group.security_group_id
    vpc_id              =   var.vpc_id
    subnets             =   var.subnets
}

module "ecs" {
    source              =   "./modules/ecs"
    cluster_name        =   var.project_name}-cluster
    service_name        =   var.project_name}-service
    task_name           =   var.project_name}-task
    subnets             =   var.subnets
    security_group_id   =   module.security_group.security_group_id
    alb_target_group_id =   module.alb.alb_target_group_id
}
