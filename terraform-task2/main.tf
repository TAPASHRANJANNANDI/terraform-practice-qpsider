resource "aws_s3_bucket" "my_bucket" {
  bucket = "tapash-bucket-12345"

  tags = {
    Name = "tapash-bucket-12345"
  }
}

resource "aws_s3_object" "my_object" {
  bucket  = aws_s3_bucket.my_bucket.id
  key     = "example.txt"
  content = "This is an example file stored in S3 bucket."
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.my_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_public_access_block" "bucket_public_access" {
  bucket = aws_s3_bucket.my_bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

output "bucket_name" {
  value = aws_s3_bucket.my_bucket.bucket
}

output "object_key" {
  value = aws_s3_object.my_object.key
}
