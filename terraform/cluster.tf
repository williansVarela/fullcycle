resource "aws_security_group" "fullcycle-sg" {
  vpc_id = aws_vpc.fullcycle-vpc.id
  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
    prefix_list_ids = []
  }
  tags = {
    Name = "${var.prefix}-sg"
  }
}
