resource "aws_s3_bucket" "s3bucket" {
  bucket = "jioaurjinedo"
  acl    = "private"
  force_destroy = "true"

  tags = {
    Name        = "JTBucket"
    Environment = "Dev"
  }
}


