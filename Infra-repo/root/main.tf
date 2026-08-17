module "vpc" {
  source           = "../modules/vpc"
  environment_name = var.environment_name
  vpc_cidr         = var.vpc_cidr
  subnet_newbits   = var.subnet_newbits
  tags             = var.tags
}

// commneted as "Checkovs" complaining since it not being used by any resource
# module "SG" {
#   source     = "../modules/SG"
#   depends_on = [module.vpc] # this depends_on not required since vpc_id = module.vpc.vpc_id already creates an implicit dependency.
#   vpc_id     = module.vpc.vpc_id
#   tags       = var.tags
# }
