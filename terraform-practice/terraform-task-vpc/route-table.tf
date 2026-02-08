resource "aws_route_table" "tapash-public-route-table" {
  vpc_id = aws_vpc.tapash-vpc.id
  route {
    cidr_block = var.tapash_public_route_cidr
    gateway_id = aws_internet_gateway.tapash-igw.id
  }
  tags = {
    Name = var.tapash_public_route_table_name
  }
}
resource "aws_route_table" "tapash-public-route-table-2" {
  vpc_id = aws_vpc.tapash-vpc.id
  route {
    cidr_block = var.tapash_public_route_cidr
    gateway_id = aws_internet_gateway.tapash-igw.id
  }
  tags = {
    Name = var.tapash_public_route_table_2_name
  }
}

resource "aws_route_table" "tapash-private-route-table-1" {
  vpc_id = aws_vpc.tapash-vpc.id
  tags = {
    Name = var.tapash_private_route_table_1_name
  }
}
