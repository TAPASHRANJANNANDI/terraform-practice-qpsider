resource "aws_vpc" "tapash-vpc" {
  cidr_block = var.tapash_vpc_cidr
  tags = {
    Name = var.tapash_vpc_name
  }
}
