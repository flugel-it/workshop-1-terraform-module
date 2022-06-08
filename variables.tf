variable "region" {
  type        = string
  description = "AWS region"
  default     = "us-east-1"
}

variable "cidr" {
  description = "The CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "instance_tenancy" {
  type    = string
  default = "default"
}

variable "vpc_tags" {
  type = map(any)
  default = {
    Name = "main"
  }
}

variable "subnet_tags" {
  type = map(any)
  default = {
    Name = "main"
  }
}
