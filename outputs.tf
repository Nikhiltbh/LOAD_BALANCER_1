output "lb_id" {
  description = "load balancer id"
  value       = aws_lb.demo-lb.id
  sensitive   = false
}
output "lb_tg_id" {
  description = "target group id"
  value       = aws_lb_target_group.demo-lb-tg.id
  sensitive   = false
}