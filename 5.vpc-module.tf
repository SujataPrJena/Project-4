module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.14.0"

  name = "${local.name}-${var.vpc_name}"
  cidr = var.vpc_cidr_block
  azs             = var.vpc_availability_zones
  private_subnets = var.vpc_private_subnet
  public_subnets  = var.vpc_public_subnet

  enable_ipv6 = false
  

  database_subnets = var.vpc_database_subnet
  create_database_subnet_group = var.vpc_create_database_subnet_group
  create_database_subnet_route_table = var.vpc_create_database_subnet_route_table



  enable_nat_gateway = var.vpc_enable_nat_gateway
  single_nat_gateway = var.vpc_create_single_nat_gateway


  public_subnet_tags = {
    type = "public subnets"
  }
  private_subnet_tags = {
    type = "private subnets"
  }
  database_subnet_tags = {
    type = "private database subnets"
  }


  tags = {
    Owner       = local.owners
    Environment = local.environment
  }
  vpc_tags = {
    Name = "vpc-name"
  }
}