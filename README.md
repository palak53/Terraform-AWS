# Terraform-AWS

The infra includes

- custom VPC priavte + public
- 3 private subnets
- 3 public subnets
- internet gateway for public subnet to internet
- nat gateway for private subnet outbound-only internet 
- ec2 instance setup to setup SG
- security groups bounded with ec2 to manage the instance inbound outbound
- clean Env based structure with reusable, clean structure

## How to Use

cd env/dev
> terraform init
> terraform plan
> terraform apply

check curl http://public-ip
