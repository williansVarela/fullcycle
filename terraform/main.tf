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
  backend "s3" {
    bucket = "fullcycle-terraform-state"
    key    = "terraform.tfstate"
    region = "us-east-1"

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

module "new-eks" {
  source           = "./modules/eks"
  prefix           = var.prefix
  cluster_name     = var.cluster_name
  vpc_id           = module.new-vpc.vpc_id
  subnet_ids       = module.new-vpc.subnet_ids
  retenion_in_days = var.retenion_in_days
  desired_size     = var.desired_size
  max_size         = var.max_size
  min_size         = var.min_size
}

