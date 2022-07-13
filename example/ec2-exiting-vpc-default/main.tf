resource "random_integer" "server" {
  min = 1
  max = 999999
}

module "network" {
  source             = "./network"
  instance_unique_id = "srv-${random_integer.server.result}"
  access_ip          = var.access_ip
  vpc_cidr           = local.vpc_cidr
  security_groups    = local.security_groups
}

module "ec2" {
  source             = "./ec2"
  instance_unique_id = "srv-${random_integer.server.result}"
  instance_type      = var.instance_type
  public_sg          = module.network.public_sg
  public_subnet      = module.network.subnet_ids[0]
}
