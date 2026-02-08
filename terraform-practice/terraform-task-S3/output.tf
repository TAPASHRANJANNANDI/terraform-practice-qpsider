output "tapash-bucket-1-name" {
  value = aws_s3_bucket.tapash-bucket-1.bucket
}
output "tapash-bucket-2-name" {
  value = aws_s3_bucket.tapash-bucket-2.bucket
}
output "tapash-bucket-1-arn" {
  value = aws_s3_bucket.tapash-bucket-1.arn
}
output "tapash-bucket-2-arn" {
  value = aws_s3_bucket.tapash-bucket-2.arn
}
output "tapash-bucket-1-region" {
  value = aws_s3_bucket.tapash-bucket-1.region
}
output "tapash-bucket-2-region" {
  value = aws_s3_bucket.tapash-bucket-2.region
}
output "tapash-bucket-1-versioning" {
  value = aws_s3_bucket_versioning.tapash-bucket-1.versioning_configuration[0].status
}
output "tapash-bucket-2-versioning" {
  value = aws_s3_bucket_versioning.tapash-bucket-2.versioning_configuration[0].status
}
output "tapash-bucket-1-object1-key" {
  value = aws_s3_object.tapash-bucket-1-object1.key
}
output "tapash-bucket-1-object2-key" {
    value = aws_s3_object.tapash-bucket-1-object2.key
}
output "tapash-bucket-1-object3-key" {
    value = aws_s3_object.tapash-bucket-1-object3.key
}
output "tapash-bucket-2-object1-key" {
    value = aws_s3_object.tapash-bucket-2-object1.key
}
output "tapash-bucket-2-object2-key" {
    value = aws_s3_object.tapash-bucket-2-object2.key
}
