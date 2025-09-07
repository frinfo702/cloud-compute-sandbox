output "key_name" {
  description = "Name of the AWS key pair"
  value       = data.aws_key_pair.deployer.key_name
}
