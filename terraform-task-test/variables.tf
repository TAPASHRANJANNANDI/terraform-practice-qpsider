variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
  }
variable "instance_type" {
  description = "Type of the EC2 instance"
  type        = string
  validation {
    condition     = contains(["t3.nano", "t3.micro", "t3.small", "t3.medium"], var.instance_type)
    error_message = "The selected instance type is not allowed. Allowed types are: t3.nano, t3.micro, t3.small, t3.medium."
  }
  
}
variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
 }
variable "object_name"{
    description = "Name of the S3 object"
    type        = string
}
variable "object_source" {
    description = "Source of the S3 object"
    type        = string
}
