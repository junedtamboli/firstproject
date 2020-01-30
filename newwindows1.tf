resource "aws_instance"  "newserver1"  {
 ami = "ami-0a6207e27499906a8"
 key_name = "key"
 instance_type = "t2.micro"
 subnet_id = "${aws_subnet.my_subnet.id}"
 vpc_security_group_ids = ["${aws_security_group.allow_traffic.id}"] 
  

  tags = {
  Name = "newwindows1server"
 }

}

