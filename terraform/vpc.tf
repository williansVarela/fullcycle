resource "aws_vpc" "fullcycle-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "${var.prefix}-vpc"
  }
}

resource "aws_subnet" "fullcycle-subnet-1" {
  availability_zone = "us-east-1a"
  vpc_id            = aws_vpc.fullcycle-vpc.id
  cidr_block        = "10.0.0.0/24"
  tags = {
    Name = "${var.prefix}-subnet"
  }
}

resource "aws_subnet" "fullcycle-subnet-2" {
  availability_zone = "us-east-1b"
  vpc_id            = aws_vpc.fullcycle-vpc.id
  cidr_block        = "10.0.1.0/24"
  tags = {
    Name = "${var.prefix}-subnet"
  }
}
