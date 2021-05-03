resource "aws_security_group" "jg-219706-ssh-sg" {
  name        = "jg-219706-ssh-sg"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.jg-219706-vpc.id

  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow-ssh-jg"
  }
}