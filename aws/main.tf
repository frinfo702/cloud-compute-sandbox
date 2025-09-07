module "vpc" {
  source     = "./vpc"
  cidr_block = "10.0.0.0/16"
  name       = "vpc_area"
}

module "subnet" {
  source            = "./subnet"
  cidr_block        = "10.0.1.0/24"
  name              = "public_subnet"
  vpc_id            = module.vpc.vpc_id
  availability_zone = "ap-northeast-1a"
}

module "internet_gateway" {
  source = "./internetgateway"
  vpc_id = module.vpc.vpc_id
  name   = "test-internet-gateway"
}

module "public_route_table" {
  source     = "./route_table"
  vpc_id     = module.vpc.vpc_id
  cidr_block = "0.0.0.0/0"
  gateway_id = module.internet_gateway.gateway_id
  name       = "public-route-table"
}

module "public_route_table_association_with_public_subnet" {
  source         = "./aws_route_table_association"
  subnet_id      = module.subnet.subnet_id
  route_table_id = module.public_route_table.route_table_id
}

module "keypair" {
  source = "./aws_keypair"
}

module "aws_instance" {
  source        = "./ec2"
  instance_type = "t4g.micro"
  name          = "web-server"
  key_name      = module.keypair.key_name
}
