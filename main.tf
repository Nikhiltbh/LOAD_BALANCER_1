resource "aws_lb" "demo-lb" {
  name               = var.lb_name
  internal           = false
  load_balancer_type = var.lb_type
  security_groups    = [var.sg__id]
  subnets            = [var.subnet1__id, var.subnet2__id]
}

resource "aws_lb_listener" "demo-lb-listerner" {
  load_balancer_arn = aws_lb.demo-lb.arn
  port              = var.lb_port
  protocol          = var.lb_protocol
  default_action {
    type             = var.lb_action_type
    target_group_arn = aws_lb_target_group.demo-lb-tg.arn
  }
}

resource "aws_lb_target_group" "demo-lb-tg" {
  name     = var.lb_target_group_name
  port     = 80
  protocol = var.lb_protocol
  vpc_id   = var.vpc__id
}
