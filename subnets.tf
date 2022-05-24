resource "aws_subnet" "public-subnets" {
  count                   = length(var.public_subnet_cidr)
  vpc_id                  = aws_vpc.default.id
  cidr_block              = element(var.public_subnet_cidr, count.index)
  # availability_zone       = element(lookup(var.azs, var.region), count.index) # map
  availability_zone       = element(var.azs, count.index)
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.vpc_name}-publicsubnet-${count.index + 1}"
  }
}

resource "aws_subnet" "private-subnets" {
  count                   = length(var.private_subnet_cidr)
  vpc_id                  = aws_vpc.default.id
  cidr_block              = element(var.private_subnet_cidr, count.index)
   # availability_zone       = element(lookup(var.azs, var.region), count.index) # map
  availability_zone       = element(var.azs, count.index)

  tags = {
    Name = "${var.vpc_name}-privatesubnet-${count.index + 1}"
  }
}
