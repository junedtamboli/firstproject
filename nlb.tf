resource "aws_lb" "nlb" {
  name               = "test-nlb"
  internal           = false
  load_balancer_type = "network"
  subnets            = ["${aws_subnet.my_subnet.id}"]

  enable_deletion_protection = true

  tags = {
    Environment = "production"
  }
}

