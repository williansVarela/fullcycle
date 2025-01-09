terraform {
  required_version = ">=1.10.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=5.82.2"
    }
    local = {
      source  = "hashicorp/local"
      version = ">=2.1.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "new-vpc" {
  source         = "./modules/vpc"
  prefix         = var.prefix
  vpc_cidr_block = var.vpc_cidr_block
}
