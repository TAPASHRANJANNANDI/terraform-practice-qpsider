resource "aws_instance" "tapash-instance" {
  ami           = "ami-0317b0f0a0144b137"
  instance_type = var.instance_type
  key_name      = "tapash-key"
  
  tags = {
    Name = var.instance_name
  }
}