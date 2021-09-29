variable "region" {
  description = "The region the environment is going to be installed into"
  type        = string
  default     = "us-east-1"
}

# VPC variables

variable "vpc_cidr" {
  description = "CIDR range of VPC"
  type        = string
  default     = "10.0.0.0/16"
}

# AWS keys

variable "aws_access_key" {
  type      = string
  sensitive = true
}

variable "aws_secret_key" {
  type      = string
  sensitive = true
}