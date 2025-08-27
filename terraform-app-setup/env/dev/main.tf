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

module "network_igw" {
  source            = "../../modules/network/igw"
  vpc_id            = module.network_vpc.vpc_id
  public_subnet_ids = module.network_subnet.public_subnet_ids
  environment       = "dev"
}


module "network_natgw" {
  source              = "../../modules/network/natgw"
  vpc_id              = module.network_vpc.vpc_id
  public_subnet_id    = module.network_subnet.public_subnet_ids[0]
  private_subnet_ids  = module.network_subnet.private_subnet_ids
  environment         = "dev"
}

module "compute_ec2" {
  source        = "../../modules/compute/ec2"
  ami_id        = "ami-111111111111" 
  instance_type = "t2.micro"
  subnet_id     = module.network_subnet.public_subnet_ids[0]
  environment   = "dev"
}