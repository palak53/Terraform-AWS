variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "name" {
  type        = string
  description = "Name tag for the VPC"
}

variable "environment" {
  type        = string
  description = "Environment tag (e.g. dev, staging, prod)"
}
