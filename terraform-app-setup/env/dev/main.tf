module "network_vpc" {
  source   = "../../modules/network/vpc"
  vpc_cidr = "10.0.0.0/16"
  name     = "dev-vpc"
}
