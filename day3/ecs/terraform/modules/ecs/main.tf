resource "aws_ecs_task_definition" "flask_task" {
  family                      = var.task_name
  requires_compatibilities    = ["FARGATE"]
  container_definitions       = file("${path.module}/task-definitions/flask.json")
  network_mode                = "awsvpc"
  cpu                         = "256"
  memory                      = "512"
}

resource "aws_ecs_cluster" "flask_cluster" {
  name = var.cluster_name
}

resource "aws_ecs_service" "flask_service" {
  name            = var.service_name
  launch_type     = "FARGATE"
  cluster         = aws_ecs_cluster.flask_cluster.id
  task_definition = aws_ecs_task_definition.flask_task.arn
  desired_count   = 3

  network_configuration {
    subnets           = var.subnets
    security_groups   = [var.security_group_id]
    assign_public_ip  = true
  }

  load_balancer {
    target_group_arn = var.alb_target_group_id
    container_name   = "nginx"
    container_port   = 80
  }
}
