variable "cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "name" {
  description = "Name tag for the subnet"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where the subnet will be created"
  type        = string
}