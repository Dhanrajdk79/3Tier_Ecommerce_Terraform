provider "aws" {
  region = "ap-south-1"
}

# Root module instantiations
module "vpc" {
  source = "./modules/vpc"
}

module "alb" {
  source          = "./modules/alb"
  vpc_id          = module.vpc.vpc_id
  public_subnets  = module.vpc.public_subnets
}

module "web" {
  source    = "./modules/web"
  ami_id    = var.ami_id
  subnet_id = element(module.vpc.public_subnets, 0)
  web_sg    = module.alb.web_sg
}

module "app" {
  source    = "./modules/app"
  ami_id    = var.ami_id
  subnet_id = element(module.vpc.private_subnets, 0)
}

module "rds" {
  source          = "./modules/rds"
  private_subnets = module.vpc.private_subnets
}
