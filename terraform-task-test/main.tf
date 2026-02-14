
module "s3-bucket" {
  source = "./s3-bucket"

  bucket_name   = var.bucket_name
  object_name   = var.object_name
  object_source = var.object_source
}
module "ec2-instance" {
  source = "./ec2-instance"

  instance_name = var.instance_name
  instance_type = var.instance_type
}
