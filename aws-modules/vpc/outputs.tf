output "subnet_ids" {
  value = aws_subnet.subnets[*].id
}

output "db_security_group_id" {
  value = aws_security_group.db_security_group.id
}