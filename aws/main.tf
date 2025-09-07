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
  source   = "./aws_keypair"
  key_name = "deployer-key"
}

module "security_group" {
  source           = "./security_group"
  vpc_id           = module.vpc.vpc_id
  name             = "web-sg"
  ingress_protocol = "tcp"
}

module "aws_instance" {
  source                 = "./aws_instance"
  instance_type          = "t4g.micro"
  name                   = "web-server"
  key_name               = module.keypair.key_name
  vpc_security_group_ids = [module.security_group.security_group_id]
  subnet_id              = module.subnet.subnet_id
  private_ip             = "10.0.1.10"
}

module "aws_ebs_volume" {
  source            = "./aws_ebs_volume"
  availability_zone = "ap-northeast-1a"
  size              = 5
  name              = "web-server-ebs"
}
