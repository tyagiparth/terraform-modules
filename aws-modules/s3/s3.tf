resource "aws_s3_bucket" "my_bucket" {
  tags = {
    Name = var.bucket_name
  }
}

resource "aws_s3_bucket_acl" "my_bucket" {

  bucket = aws_s3_bucket.my_bucket.id
  acl    = var.bucket_acl
}