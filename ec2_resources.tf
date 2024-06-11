# Create ec2 instances
resource "aws_instance" "web1" {
  ami           = "********"
  instance_type = "*****"
  key_name        = "******"
  availability_zone = "*****"
  vpc_security_group_ids      = [aws_security_group.public_sg.id]
  subnet_id                   = aws_subnet.pub-subnet-1.id
  associate_public_ip_address = true
  tags = {
    Name = "web1_instance"
  }
}

resource "aws_instance" "web2" {
  ami           = "******"
  instance_type = "******"
  key_name        = "******"
  availability_zone = "*******"
  vpc_security_group_ids      = [aws_security_group.public_sg.id]
  subnet_id                   = aws_subnet.pub-subnet-2.id
  associate_public_ip_address = true
  tags = {
    Name = "web2_instance"
  }
}