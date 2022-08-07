resource "aws_s3_bucket" "mysqslambda-b" {
  bucket = "mysqslambda-b"
  acl           = "public-read-write"
  force_destroy = "true"
  tags = {
    Name        = "my bucket"
    Environment = "test"
  }
}
