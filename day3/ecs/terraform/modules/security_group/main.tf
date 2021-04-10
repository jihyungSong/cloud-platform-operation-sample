resource "aws_security_group" "flask_sg" {
  name        = "${var.sg_prefix}-flask-sg"
  vpc_id      = var.vpc_id

  # Outbound ALL
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name      = "${var.sg_prefix}-flask-sg"
    Managed_by = "terraform"
  }
}

resource "aws_security_group_rule" "http_ingress" {
  security_group_id             = aws_security_group.flask_sg.id
  description                   = "Allow HTTP traffic"
  cidr_blocks                   = ["0.0.0.0/0"]
  from_port                     = 80
  protocol                      = "tcp"
  to_port                       = 80
  type                          = "ingress"
}
