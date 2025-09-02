variable "cidr_block" { 
        description = "CIDR block for the VPC"
        type = string 

        validation {
            condition     = can(cidrhost(var.cidr_block, 0))
            error_message = "Must be valid IPv4 or IPv6 CIDR."
        }
    }

variable "name" {
        description = "Name tag for the VPC"
        type = string 
     }
