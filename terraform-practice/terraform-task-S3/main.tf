resource "aws_s3_bucket" "tapash-bucket-1" {
  bucket = "tapash-bucket-1-2026"

  tags = {
    Name        = "tapash-bucket-1-2026"
    Environment = "Dev"
  }
}
resource "aws_s3_bucket" "tapash-bucket-2" {
  bucket = "tapash-bucket-2-2026"

  tags = {
    Name        = "tapash-bucket-2-2026"
    Environment = "Dev"
  }
}
resource "aws_s3_bucket_public_access_block" "tapash-bucket-1" {
  bucket = aws_s3_bucket.tapash-bucket-1.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_public_access_block" "tapash-bucket-2" {
  bucket = aws_s3_bucket.tapash-bucket-2.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
resource "aws_s3_bucket_versioning" "tapash-bucket-1" {
  bucket = aws_s3_bucket.tapash-bucket-1.id

  versioning_configuration {
    status = "Enabled"
  }
}
resource "aws_s3_bucket_versioning" "tapash-bucket-2" {
  bucket = aws_s3_bucket.tapash-bucket-2.id

  versioning_configuration {
    status = "Enabled"
  }
}
resource "aws_s3_object" "tapash-bucket-1-object1" {
  key        = "object1"
  bucket     = aws_s3_bucket.tapash-bucket-1.id
  source     = "earbuds.jpg"
}
resource "aws_s3_object" "tapash-bucket-1-object2" {
  key        = "object2"
  bucket     = aws_s3_bucket.tapash-bucket-1.id
  source     = "Levis jeans.jpg"
}
resource "aws_s3_object" "tapash-bucket-1-object3" {
  key        = "object3"
  bucket     = aws_s3_bucket.tapash-bucket-1.id
  source     = "phone.webp"
}
resource "aws_s3_object" "tapash-bucket-2-object1" {
  key        = "object1"
  bucket     = aws_s3_bucket.tapash-bucket-2.id
  source     = "earbuds.jpg"
}
resource "aws_s3_object" "tapash-bucket-2-object2" {
  key        = "object2"
  bucket     = aws_s3_bucket.tapash-bucket-2.id
  source     = "lancer shoes.jpg"
}
