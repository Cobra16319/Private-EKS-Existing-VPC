provider "aws" {
  region = var.region
}

module "vpc" {
  source = "./vpc"
}

module "eks" {
  source = "./eks"
  vpc_id = var.vpc_id
  private_subnet_ids = var.private_subnet_ids
  cluster_name = var.cluster_name
}
