locals {
  common_tags = {
    environment="staging"
  }
  prefix = "ifx-stage"
}

module "my-vpc" {
  source      = "../modules/vpc"
  vpc-cidr    = var.vpc-cidr
  vpc-enabled = var.vpc-enabled

  tags = merge(local.common_tags, tomap({"name" = format("%s-%s", local.prefix, "vpc")})
  )  

}
