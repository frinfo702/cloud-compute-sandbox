variable "instance_type" {
  description = "EC2 instance type (e.g., t2.micro)"
  type        = string
}

variable "name" {
  description = "Name tag to assign to the EC2 instance"
  type        = string
}

variable "key_name" {
  description = "Name of the AWS key pair to use for the EC2 instance"
  type        = string
}

variable "vpc_security_group_ids" {
  description = ""
  type        = set(string)
}

variable "subnet_id" {
  description = ""
  type        = string
}

variable "private_ip" {
  description = ""
  type        = string
}
