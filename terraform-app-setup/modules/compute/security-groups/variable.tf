variable "vpc_id" {
  type        = string
  description = "VPC where SG will be created"
}

variable "environment" {
  type        = string
  description = "Environment name"
}
