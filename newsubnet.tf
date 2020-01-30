resource "aws_subnet" "new_subnet" {
  vpc_id            = "${aws_vpc.vpcip.id}"
  cidr_block        = "10.0.10.0/16"
  availability_zone = "ap-south-1b"
  map_public_ip_on_launch = "true"
  tags = {
    Name = "worksunbet"
  }
}

