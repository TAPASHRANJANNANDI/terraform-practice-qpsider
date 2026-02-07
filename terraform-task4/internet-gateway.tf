resource "aws_internet_gateway" "tapash-igw" {
  vpc_id = aws_vpc.tapash-vpc.id
  tags = {
    Name = var.tapash_igw_name
  }
}
