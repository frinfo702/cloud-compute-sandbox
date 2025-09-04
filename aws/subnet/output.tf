output "subnet_id" {
  description = "ID of the created Subnet"
  value       = aws_subnet.public_subnet.id
}