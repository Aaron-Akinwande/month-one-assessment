output "vpc_id" {
  value = aws_vpc.techcorp_vpc.id
}

output "alb_dns_name" {
  value = aws_lb.techcorp_alb.dns_name
}

output "bastion_public_ip" {
  value = aws_instance.bastion.public_ip
}