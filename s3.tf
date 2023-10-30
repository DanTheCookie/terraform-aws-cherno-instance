resource "aws_s3_bucket" "bucket" {
  bucket = "chernoinfinitytest"
  acl    = "private"
}

