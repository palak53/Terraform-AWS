variable "vpc_id" {
  type        = string
  description = "ID of the VPC to place subnets in"
}

variable "azs" {
  type        = list(string)
  description = "Availability zones for subnets"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "CIDR blocks for public subnets"
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "CIDR blocks for private subnets"
}

variable "environment" {
  type        = string
  description = "Environment name (e.g., dev, prod)"
}