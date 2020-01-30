resource "aws_lb_listener" "nlbls" {
  load_balancer_arn = "${aws_lb.nlb.arn}"
  port              = "80"
  protocol          = "tcp"

  default_action {
    type             = "forward"
    target_group_arn = "${aws_lb_target_group.tgtesting.arn}"
  }
}
