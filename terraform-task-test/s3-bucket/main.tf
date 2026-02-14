resource "aws_s3_bucket" "tapash-bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = var.bucket_name
    Environment = "Dev"
  }
}
resource "aws_s3_bucket_public_access_block" "tapash-bucket-block" {
  bucket = aws_s3_bucket.tapash-bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
resource "aws_s3_bucket_versioning" "tapash-bucket-versioning" {
  bucket = aws_s3_bucket.tapash-bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
resource "aws_s3_object" "tapash-bucket-object1" {
    key        = var.object_name
    bucket     = aws_s3_bucket.tapash-bucket.id
    source     = var.object_source
}