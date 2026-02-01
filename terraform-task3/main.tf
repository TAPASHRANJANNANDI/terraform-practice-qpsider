# Task on S3
# 1. create 3 buckets with unique names
# 2. Give public access to bucket1 and bucket3
# 3. Add 2 object in bucket 1
# 4. Add 3 object in bucket 3
# 5. Keep bucket2 empty 
# 6. Enable bucket versioning for bucket2 and bucket3
# 4. Verify the resource creation in AWS and send screenshot of buckets, objects, public access and bucket versioning.
resource "aws_s3_bucket" "my_bucket_1" {
  bucket = "tapash-bucket-11111111"

  tags = {
    Name = "tapash-bucket-111111111"
  }
}
resource "aws_s3_bucket" "my_bucket_2" {
  bucket = "tapash-bucket-2"

  tags = {
    Name = "tapash-bucket-2"
  }
}
resource "aws_s3_bucket" "my_bucket_3" {
  bucket = "tapash-bucket-3"

  tags = {
    Name = "tapash-bucket-3"
  }
}
resource "aws_s3_object" "my_object" {
  bucket  = aws_s3_bucket.my_bucket_1.id
  key     = "example.txt"
  content = "This is an example file stored in S3 bucket."
}
resource "aws_s3_object" "my_object_2" {
  bucket  = aws_s3_bucket.my_bucket_1.id
  key     = "example2.txt"
  content = "This is the second example file stored in S3 bucket."
}
resource "aws_s3_object" "my_object_3" {
  bucket  = aws_s3_bucket.my_bucket_3.id
  key     = "example3.txt"
  content = "This is the first example file stored in S3 bucket 3."
}
resource "aws_s3_object" "my_object_4" {
  bucket  = aws_s3_bucket.my_bucket_3.id
  key     = "example4.txt"
  content = "This is the second example file stored in S3 bucket 3."
}
resource "aws_s3_object" "my_object_5" {
  bucket  = aws_s3_bucket.my_bucket_3.id
  key     = "example5.txt"
  content = "This is the third example file stored in S3 bucket 3."
}


resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.my_bucket_3.id

  versioning_configuration {
    status = "Enabled"
  }
}
resource "aws_s3_bucket_versioning" "versioning_2" {
  bucket = aws_s3_bucket.my_bucket_2.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_public_access_block" "bucket_public_access_1" {
  bucket = aws_s3_bucket.my_bucket_1.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_public_access_block" "bucket_public_access_2" {
  bucket = aws_s3_bucket.my_bucket_2.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_public_access_block" "bucket_public_access_3" {
  bucket = aws_s3_bucket.my_bucket_3.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

output "bucket_name_1" {
  value = aws_s3_bucket.my_bucket_1.bucket
}

output "bucket_name_2" {
  value = aws_s3_bucket.my_bucket_2.bucket
}

output "bucket_name_3" {
  value = aws_s3_bucket.my_bucket_3.bucket
}

output "object_key" {
  value = aws_s3_object.my_object.key
}
