module "vpc" {
  source           = "../modules/vpc"
  environment_name = var.environment_name
  vpc_cidr         = var.vpc_cidr
  subnet_newbits   = var.subnet_newbits
  tags             = var.tags
}


module "SG" {
  source     = "../modules/SG"
  depends_on = [module.vpc] # this depends_on is optional here since vpc_id = module.vpc.vpc_id already creates an implicit dependency.
  vpc_id     = module.vpc.vpc_id
  tags       = var.tags
}
