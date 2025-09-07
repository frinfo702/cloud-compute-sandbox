variable "availability_zone" {
  description = "Availability Zone where the EBS volume will be created (e.g., ap-northeast-1a)"
  type        = string
}

variable "size" {
  description = "Size of the EBS volume in GiB"
  type        = number
}

variable "name" {
  description = "Name of the EBS"
  type        = string
}
