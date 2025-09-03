variable "vpc_id" {
  description = "VPC ID where the public route table will be created"
  type        = string
}

variable "cidr_block" {
  description = "Destination CIDR block for the route (e.g., 0.0.0.0/0 for internet access)"
  type        = string
}

variable "gateway_id" {
  description = "ID of the Internet Gateway or NAT Gateway for routing traffic"
  type        = string
}

variable "name" {
  description = "Name tag for the public route table"
  type        = string
}

