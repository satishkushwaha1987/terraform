resource "aws_vpc" "vpc" {

  cidr_block           = var.vpc_cidr
  instance_tenancy     = "default"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"
}

resource "aws_route_table" "public-rt" {
  vpc_id = var.vpc_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.igw_id
  }

}

resource "aws_internet_gateway" "igw" {
  vpc_id = var.vpc_id
}
resource "aws_route_table" "public-rt" {
  vpc_id = var.vpc_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.igw_id
  }
}
resource "aws_route_table_association" "public-subnet-assoc" {
  count          = length(var.pub_subnet_with_region)
  subnet_id      = element(aws_subnet.public-subnet.*.id, count.index)
  route_table_id = element(aws_route_table.public-rt.*.id, count.index)
}