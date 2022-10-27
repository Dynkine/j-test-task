output "aws_subnet_public" {
  value = aws_subnet.public[*]
}

output "aws_subnet_private" {
  value = aws_subnet.private[*]
}

output "aws_vpc" {
  value = aws_vpc.home_task_vpc
}
