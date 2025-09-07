output "key_name" {
  description = "Name of the AWS key pair"
  value       = aws_key_pair.deployer.key_name
}

output "private_key_path" {
  description = "Path to the private key file"
  value       = local.private_key_file
}

output "public_key_path" {
  description = "Path to the public key file"
  value       = local.public_key_file
}
