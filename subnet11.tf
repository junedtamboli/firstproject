resource "aws_subnet" "my_subnet" {
  vpc_id            = "${aws_vpc.myvpc.id}"
  cidr_block        = "172.16.10.0/24"
  availability_zone = "ap-south-1b"
  map_public_ip_on_launch = "true"
  tags = {
    Name = "subn"
  }
}
