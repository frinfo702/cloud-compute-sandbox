variable "vpc_id" {
  description = "VPC ID to attach the security group"
  type        = string
}

variable "name" {
  description = "Security group name"
  type        = string
}

variable "ingress_protocol" {
  description = "Protocol to allow for ingress (e.g., tcp)"
  type        = string
  default     = "tcp"
}

variable "description" {
  description = "Description for the security group"
  type        = string
  default     = "Security group for web server"
}

variable "ssh_description" {
  description = "Description for SSH ingress rule"
  type        = string
  default     = "Allow SSH"
}

variable "ssh_from_port" {
  description = "From port for SSH ingress"
  type        = number
  default     = 22
}

variable "ssh_to_port" {
  description = "To port for SSH ingress"
  type        = number
  default     = 22
}

variable "ssh_cidr_blocks" {
  description = "CIDR blocks for SSH ingress"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "http_description" {
  description = "Description for HTTP ingress rule"
  type        = string
  default     = "Allow HTTP"
}

variable "http_from_port" {
  description = "From port for HTTP ingress"
  type        = number
  default     = 80
}

variable "http_to_port" {
  description = "To port for HTTP ingress"
  type        = number
  default     = 80
}

variable "http_cidr_blocks" {
  description = "CIDR blocks for HTTP ingress"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "egress_from_port" {
  description = "From port for egress rule"
  type        = number
  default     = 0
}

variable "egress_to_port" {
  description = "To port for egress rule"
  type        = number
  default     = 0
}

variable "egress_protocol" {
  description = "Protocol for egress rule (e.g., -1 for all)"
  type        = string
  default     = "-1"
}

variable "egress_cidr_blocks" {
  description = "CIDR blocks for egress rule"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}


