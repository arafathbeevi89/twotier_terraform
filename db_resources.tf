# Database subnet group
resource "aws_db_subnet_group" "db_subnet"  {
    name       = "db-subnet"
    subnet_ids = [aws_subnet.pri-subnet-1.id, aws_subnet.pri-subnet-2.id]
}

# Create database instance
resource "aws_db_instance" "project_db" {
  allocated_storage    = 5
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "****"
  identifier           = "db-instance"
  db_name              = "project_db"
  username             = "*****"
  password             = "*****"
  db_subnet_group_name = aws_db_subnet_group.db_subnet.id
  vpc_security_group_ids = [aws_security_group.private_sg.id]  
  publicly_accessible = false
  skip_final_snapshot  = true
}