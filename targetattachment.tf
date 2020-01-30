resource "aws_lb_target_group_attachment" "test" {
  target_group_arn = "${aws_lb_target_group.tgtesting.arn}"
  target_id        = "${aws_instance.newserver1.id}"
  port             = 80
}



resource "aws_lb_target_group_attachment" "test1" {
  target_group_arn = "${aws_lb_target_group.tgtesting.arn}"
  target_id        = "${aws_instance.newserver2.id}"
  port             = 80
}
