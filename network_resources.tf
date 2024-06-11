# Create VPC
resource "aws_vpc" "vpc" {
  cidr_block       = "********"
  instance_tenancy = "default"

  tags = {
    Name = "my-vpc"
  }
}

# Create internet gateway
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "my-ig"
  }
}
# Create 2 public subnets
resource "aws_subnet" "pub-subnet-1" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "*******"
  availability_zone = "******"
  map_public_ip_on_launch = true

  tags = {
    Name = "pub-subnet-1"
  }
}
resource "aws_subnet" "pub-subnet-2" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "********"
  availability_zone = "******"
  map_public_ip_on_launch = true

  tags = {
    Name = "pub-subnet-2"
  }
}
# Create 2 private subnets
resource "aws_subnet" "pri-subnet-1" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "********"
  availability_zone = "*******"
  map_public_ip_on_launch = false

  tags = {
    Name = "pri-subnet-1"
  }
}

resource "aws_subnet" "pri-subnet-2" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "*******"
  availability_zone = "*****"
  map_public_ip_on_launch = false

  tags = {
    Name = "pri-subnet-2"
  }
}