output "vpc_name" {
  value = var.vpc_name
}

output "vpc_id" {
  value = aws_vpc.default.id
}

output "public_subnet_list" {
  value = aws_subnet.public-subnets.*.id
}

output "private_subnet_list" {
  value = aws_subnet.private-subnets.*.id
}
output "public_subnet_lis_1" {
  value = aws_subnet.public-subnets.0.id
}

output "environment" {
  value = var.environment
}

output "igw" {
  value = aws_internet_gateway.default-igw.id
}
