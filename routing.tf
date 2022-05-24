resource "aws_route_table" "terraform-public" {
  vpc_id = aws_vpc.default.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.default-igw.id
  }
  tags = {
    Name = "${var.vpc_name}-Public-Table"
  }
}

resource "aws_route_table" "terraform-private" {
  vpc_id = aws_vpc.default.id

#   route {
#     cidr_block     = "0.0.0.0/0"
#     nat_gateway_id = aws_nat_gateway.prod-nat.id
#   }
  tags = {
    Name = "${var.vpc_name}-Private-Table"
  }
}
