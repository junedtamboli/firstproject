resource "aws_vpc" "vpcip" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = "true"
  enable_dns_support  = "true"

  tags = {
    Name = "work"
  }
}


resource "aws_default_route_table_association" "ass" {
  subnet_id      = "aws_subnet.new_subnet.id"
  route_table_id = "aws_route_table.rtb-0bac6690de3f8d18f.id"
}
