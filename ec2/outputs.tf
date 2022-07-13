output "ec2_public_dns" {
  value = aws_instance.node.public_dns
}

output "ec2_public_ip" {
  value = aws_instance.node.public_ip
}

output "private_key_pem" {
  value = tls_private_key.key.private_key_pem
}
