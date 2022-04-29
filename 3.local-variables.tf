#define local variables in terraform

locals {
  owners = var.business_division
  environment = var.environment
  name = "${var.business_division}-${var.environment}"
  common_tags = {
      owners = local.owners
      environment = local.environment
  }
}