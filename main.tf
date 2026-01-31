
resource "aws_instance" "tapash-instance" {
    ami           = "ami-0ff5003538b60d5ec"
    instance_type = "t3.micro"
    key_name      = "tapash-key"
    security_groups = [aws_security_group.tapash-sg.name]
    tags = {
      Name = "Tapash-Instance"
    }
  
}


resource "aws_security_group" "tapash-sg" {
  name        = "tapash-security-group"
  description = "Security group for Tapash instance"

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
resource "aws_ebs_volume" "tapash-volume" {
  availability_zone = "ap-south-1a"
  size              = 8

  tags = {
    Name = "tapash-volume"
  }
}

resource "aws_volume_attachment" "tapash-volume" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.tapash-volume.id
  instance_id = aws_instance.tapash-instance.id
}