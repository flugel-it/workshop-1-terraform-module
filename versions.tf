terraform {
  required_version = ">= 1.0.11"
  required_providers {
    aws = {
      version = ">= 4.15.1"
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.region
}
