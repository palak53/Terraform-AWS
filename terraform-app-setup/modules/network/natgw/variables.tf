variable "vpc_id" {
  type        = string
  description = "ID of the VPC"
}

variable "public_subnet_id" {
  type        = string
  description = "A public subnet ID to place the NAT gateway"
}

variable "private_subnet_ids" {
  type        = list(string)
  description = "List of private subnet IDs"
}

variable "environment" {
  type        = string
  description = "Environment name"
}
