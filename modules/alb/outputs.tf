output "alb_dns" {
  value = aws_lb.alb.dns_name
}

output "web_sg" {
  value = aws_security_group.alb_sg.id
}
