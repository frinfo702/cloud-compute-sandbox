resource "aws_security_group" "this" {
  name        = var.name
  description = var.description
  vpc_id      = var.vpc_id

  ingress {
    description = var.ssh_description
    from_port   = var.ssh_from_port
    to_port     = var.ssh_to_port
    protocol    = var.ingress_protocol
    cidr_blocks = var.ssh_cidr_blocks
  }

  ingress {
    description = var.http_description
    from_port   = var.http_from_port
    to_port     = var.http_to_port
    protocol    = var.ingress_protocol
    cidr_blocks = var.http_cidr_blocks
  }

  egress {
    from_port   = var.egress_from_port
    to_port     = var.egress_to_port
    protocol    = var.egress_protocol
    cidr_blocks = var.egress_cidr_blocks
  }
}

output "security_group_id" {
  description = "ID of the security group"
  value       = aws_security_group.this.id
}


