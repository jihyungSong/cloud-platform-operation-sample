output "task_family" {
    value       =   aws_ecs_task_definition.flask_task.family
}

output "cluster_name" {
    value       =   aws_ecs_cluster.flask_cluster.name
}
