output "vpc_id" {
  value = aws_vpc.vpc.id
}
output "igw_id" {
  value = aws_internet_gateway.igw.id
}
output "vpc_cidr" {
  value = aws_vpc.vpc.cidr_block
}
output "public_subnet_ids" {
  value = aws_subnet.public-subnet.id
}