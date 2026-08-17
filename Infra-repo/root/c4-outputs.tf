output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "VPC ID used by EKS and other services"
}

# output "private_subnet_ids" {
#   value       = module.vpc.private_subnet_ids
#   description = "Private subnets for EKS worker nodes"
# }

output "public_subnet_ids" {
  value       = module.vpc.public_subnet_ids
  description = "Public subnets for ALB, NLB, etc."
}

output "public_subnet_map" {
  value       = module.vpc.public_subnet_map
  description = "Public subnets for ALB, NLB, etc."
}
# Output  for alb SG
output "alb_sg_id" {
  value       = module.SG.alb_sg_id
  description = "The ID of the ALB SG"
}

# Output for app SG
output "app_sg_id" {
  value       = module.SG.app_sg_id
  description = "The ID of the application tier EC2 vm SG"
}

# Output  for ssh SG
output "ssh_sg_id" {
  value       = module.SG.ssh_sg_id
  description = "The ID of the allow SSH SG"
}
