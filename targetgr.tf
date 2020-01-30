resource "aws_lb_target_group" "tgtesting" {
  name     = "targetgr"
  port     = 80
  protocol = "HTTP"
  vpc_id   = "${aws_vpc.myvpc.id}"
}
