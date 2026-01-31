resource "aws_instance" "tapash-instance-1" {
    ami           = "ami-0ff5003538b60d5ec"
    instance_type = "t3.micro"
    key_name      = "tapash-key"
    security_groups = [aws_security_group.tapash-sg.name]
    tags = {
      Name = "Tapash-Instance-1"
    }
  
}
resource "aws_instance" "tapash-instance-2" {
    ami           = "ami-0ff5003538b60d5ec"
    instance_type = "t3.micro"
    key_name      = "tapash-key-1"
    security_groups = [aws_security_group.tapash-sg.name]
    tags = {
      Name = "Tapash-Instance-2"
    }
  
}
resource "aws_key_pair" "tapash-key-1" {
  key_name   = "tapash-key-1"
  public_key = file("~/.ssh/id_ed25519.pub")
}
resource "aws_security_group" "tapash-sg" {
  name        = "tapash-security-group"
    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
resource "aws_ebs_volume" "tapash-volume-1" {
  availability_zone = "ap-south-1a"
  size              = 8

  tags = {
    Name = "tapash-volume-1"
  }
}
resource "aws_ebs_volume" "tapash-volume-2" {
  availability_zone = "ap-south-1a"
  size              = 8

  tags = {
    Name = "tapash-volume-2"     
}
}
resource "aws_volume_attachment" "tapash-volume-1-attach" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.tapash-volume-1.id
  instance_id = aws_instance.tapash-instance-1.id
}
resource "aws_volume_attachment" "tapash-volume-2-attach" {
    device_name = "/dev/sdi"
    volume_id   = aws_ebs_volume.tapash-volume-2.id
    instance_id = aws_instance.tapash-instance-2.id
}