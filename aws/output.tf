output "dns_name" {
  value = aws_instance.web-west-2.public_dns
}

output "ip_address" {
  value = aws_instance.web-west-2.public_ip
}