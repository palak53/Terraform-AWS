module "network_vpc" {
  source   = "../../modules/network/vpc"
  vpc_cidr = "10.0.0.0/16"
  name     = "dev-vpc"
}

module "network_subnet" {
  source               = "../../modules/network/subnet"
  vpc_id               = module.network_vpc.vpc_id
  azs                  = ["us-east-1a", "us-east-1b", "us-east-1c"]
  public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  private_subnet_cidrs = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
  environment          = "dev"
}
