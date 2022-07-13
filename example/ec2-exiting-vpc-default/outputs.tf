output "network_vpcId" {
  value = module.network.vpc_id
}

output "network_subnetCidrBlocks" {
  value = module.network.subnet_cidr_blocks
}

output "network_subnetIds" {
  value = module.network.subnet_ids
}

output "ec2_public_ip" {
  value = module.ec2.ec2_public_ip
}

output "ec2_public_dns" {
  value = module.ec2.ec2_public_dns
}
