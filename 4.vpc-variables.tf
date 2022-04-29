#vpc input variables

#vpc name
variable "vpc_name" {
  description = "vpc name"
  type = string
  default = "myvpc"
}

#vpc cidr block
variable "vpc_cidr_block" {
  description = "vpc cidr block"
  type = string
  default = "10.0.0.0/16"
}

#vpc azs
variable "vpc_availability_zones" {
  description = "vpc azs"
  type = list(string)
  default = ["us-east-1a","us-east-1b"]
}

#vpc public subnets
variable "vpc_public_subnet" {
  description = "vpc public subnet"
  type = list(string)
  default = ["10.0.151.0/24","10.0.152.0/24"]
}

#vpc private subnets
variable "vpc_private_subnet" {
  description = "vpc private subnet"
  type = list(string)
  default = ["10.0.1.0/24","10.0.2.0/24"]
}

#create database subnet
variable "vpc_database_subnet" {
  description = "vpc database subnet"
  type = list(string)
  default = ["10.0.101.0/24","10.0.102.0/24"]
}

#create database subnet group
variable "vpc_create_database_subnet_group" {
  description = "vpc create database route table"
  type = bool
  default = true
}

#create database route table
variable "vpc_create_database_subnet_route_table" {
  description = "vpc create database route table"
  type = bool
  default = true
}

#vpc enable nat gateway
variable "vpc_enable_nat_gateway" {
  description = "vpc enable nat gateway"
  type = bool
  default = true
}

#vpc create single nat gateway
variable "vpc_create_single_nat_gateway" {
  description = "vpc create single nat gateway"
  type = bool
  default = true
}












#vpc name
#vpc cidr block
#vpc azs
#vpc public subnets
#vpc private subnets
#vps database subnet
#create database subnet group
#create database route table
#vpc enable nat gateway
#vpc single nat gateway