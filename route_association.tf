resource "aws_route_table_association" "public-subnets-assoc" {
  count          = length(var.public_subnet_cidr)
  subnet_id      = element(aws_subnet.public-subnets.*.id, count.index)
  route_table_id = aws_route_table.terraform-public.id
}

resource "aws_route_table_association" "private-subnets-assoc" {
  count          = length(var.private_subnet_cidr)
  subnet_id      = element(aws_subnet.private-subnets.*.id, count.index)
  route_table_id = aws_route_table.terraform-private.id
}
