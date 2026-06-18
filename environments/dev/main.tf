module "vpc" {
  source = "../../modules/VPC"
  environment = "dev"
    vpc_cidr = "10.0.0.0/16"
    availability_zones = ["us-west-2a", "us-west-2b"]
}

module "security_group" {
  source = "../../modules/security-group"
  environment = "dev"
  vpc_id = module.vpc.vpc_id
}

module "alb" {
  source = "../../modules/alb"
  environment = "dev"
  vpc_id = module.vpc.vpc_id
  public_subnet_ids = module.vpc.public_subnet_ids
  alb_sg_id = module.security_group.alb_sg_id
}