resource "aws_route_table_association" "tapash-public-subnet-association" {
  subnet_id = aws_subnet.tapash-public-subnet-1.id
  route_table_id = aws_route_table.tapash-public-route-table.id
}
resource "aws_route_table_association" "tapash-private-subnet-1-association" {
  subnet_id = aws_subnet.tapash-private-subnet-1.id
  route_table_id = aws_route_table.tapash-private-route-table-1.id
}
resource "aws_route_table_association" "tapash-private-subnet-2-association" {
  subnet_id = aws_subnet.tapash-private-subnet-2.id
  route_table_id = aws_route_table.tapash-private-route-table-2.id
}
