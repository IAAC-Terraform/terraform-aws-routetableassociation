# Configure Route Table Association
resource "aws_route_table_association" "rtassociaton" {
  count          = "${var.create_vpc ? length(var.subnet_id) : 0}"
  subnet_id      = "${element(var.subnet_id, count.index)}"
  route_table_id = "${element(var.route_table_id, count.index)}"
}