resource "aws_vpc" "default" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = true
  instance_tenancy     = "default"

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_internet_gateway" "default-igw" {
  vpc_id = aws_vpc.default.id

  tags = {
    Name = "${var.vpc_name}-IGW"
  }
}
