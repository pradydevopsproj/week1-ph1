
# Invoking s3 module 
module "s3" {
  source = "../modules/s3"
  #version = "" need to add version of this custom s3 module
  environment_name = var.environment_name
}
