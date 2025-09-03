variable "vpc_id" {
  description = "VPC ID where the public route table will be created"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block for the public route table"
  type        = string
}

variable "gateway_id" {
  description = "Gateway ID for the public route table"
  type        = string
}

variable "name" {
  description = "Name tag for the public route table"
  type        = string
}

