module "vpc" {
  source     = "./vpc"
  cidr_block = "10.0.0.0/16"
  name       = "vpc_area"
}

module "subnet" {
  source     = "./subnet"
  cidr_block = "10.0.1.0/24"
  name       = "public_subnet"
  vpc_id     = module.vpc.vpc_id
}