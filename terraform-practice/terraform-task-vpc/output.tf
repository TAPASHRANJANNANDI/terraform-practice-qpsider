output "tapash_vpc_name" {
  value = aws_vpc.tapash-vpc.tags["Name"]
}
output "tapash_public_subnet_1_name" {
  value = aws_subnet.tapash-public-subnet-1.tags["Name"]
}
output "tapash_public_subnet_2_name" {
  value = aws_subnet.tapash-public-subnet-2.tags["Name"]
}
output "tapash_private_subnet_1_name" {
    value = aws_subnet.tapash-private-subnet-1.tags["Name"]
}
output "tapash_public_route_table_name" {
    value = aws_route_table.tapash-public-route-table.tags["Name"]
}
output "tapash_private_route_table_1_name" {
    value = aws_route_table.tapash-private-route-table-1.tags["Name"]
}
output "tapash_public_route_table_2_name" {
    value = aws_route_table.tapash-public-route-table-2.tags["Name"]
}
output "tapash_igw_name" {
    value = aws_internet_gateway.tapash-igw.tags["Name"]
}

