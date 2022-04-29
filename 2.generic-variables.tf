#input variable

#aws region
variable "aws_region" {
    description = "describe the aws region"
    type = string
    default = "us-east-1"
}

#environment variable
variable "environment" {
  description = "environment variable"
  type = string
  default = "dev"
}

#business division variable
variable "business_division" {
  description = "business division"
  type = string
  default = "SAP"
}