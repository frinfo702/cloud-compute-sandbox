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

variable "availability_zone" {
  description = "Availability zone for public subnet"
  type        = string
}

variable "map_public_ip_on_launch" {
  description = "Should instances launched in this subnet receive a public IP address?"
  type        = bool
  default     = true
}