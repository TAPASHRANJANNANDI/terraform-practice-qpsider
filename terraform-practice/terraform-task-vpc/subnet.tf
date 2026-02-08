resource "aws_subnet" "tapash-public-subnet-1" {
  vpc_id = aws_vpc.tapash-vpc.id
  cidr_block = var.tapash_public_subnet_1_cidr
  availability_zone = var.tapash_public_subnet_region_1
  tags = {
    Name = var.tapash_public_subnet_1_name
  }
}
resource "aws_subnet" "tapash-public-subnet-2" {
  vpc_id = aws_vpc.tapash-vpc.id
  cidr_block = var.tapash_public_subnet_2_cidr
  availability_zone = var.tapash_public_subnet_region_2
  tags = {
    Name = var.tapash_public_subnet_2_name
  }
}
resource "aws_subnet" "tapash-private-subnet-1" {
  vpc_id = aws_vpc.tapash-vpc.id
  cidr_block = var.tapash_private_subnet_1_cidr
  availability_zone = var.tapash_private_subnet_region_1
  tags = {
    Name = var.tapash_private_subnet_1_name
  }
}
