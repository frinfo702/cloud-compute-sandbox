output "gateway_id" {
  description = "ID of the created internet gateway"
  value       = aws_internet_gateway.this.id
}