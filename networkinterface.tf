resource "aws_network_interface" "foo" {
  subnet_id   = "${aws_subnet.my_subnet.id}"
  security_groups = ["${aws_security_group.allow_traffic.id}"]
  private_ips = ["172.16.10.100"]

  tags = {
    Name = "primary_network_interface"
  }
}
