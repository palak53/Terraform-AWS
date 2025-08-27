variable "ami_id" {
  type        = string
  description = "AMI ID to use"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}

variable "subnet_id" {
  type        = string
  description = "Public subnet where EC2 will be launched"
}

variable "environment" {
  type        = string
  description = "Environment name"
}
