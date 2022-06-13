variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "instance_tenancy" {
  description = "Tenancy of instances spin up within VPC."
  type        = string
  default     = "default"
}

variable "vpc_tags" {
  description = "The tags of the VPC"
  type        = map(any)
  default = {
    Name = "main"
  }
}

variable "subnet_tags" {
  description = "The tags of the subnet"
  type        = map(any)
  default = {
    Name = "main"
  }
}

variable "subnet_cidr" {
  description = "The CIDR block for the subnet."
  type        = string
  default     = "10.0.1.0/24"
}
