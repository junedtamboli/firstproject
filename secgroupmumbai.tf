resource "aws_security_group" "allow_traffic" {
  name        = "allow_tls"
  description = "Allow TLS traffic"
  vpc_id      = "${aws_vpc.myvpc.id}"

  ingress {
    from_port   = 0
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

 ingress {
   from_port    = 0
   to_port      = 80
   protocol     = "tcp"
   cidr_blocks  = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  tags  = {
   Name = "sgm"
   }
}

