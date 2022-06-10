resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = var.instance_tenancy

  tags = var.vpc_tags
}

resource "aws_subnet" "example" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_cidr

  tags = var.subnet_tags
}
