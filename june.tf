resource "aws_instance" "jvm"  {
  ami = "ami-0994c095691a46fb5"
  instance_type = "t2.micro"
  key_name = "westkey"
  
 tags = {
  Name = "marriot"
  }

}

