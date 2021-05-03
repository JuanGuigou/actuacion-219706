provider "aws" {
    region = "us-east-1"
    profile = "default"
}

resource "aws_instance" "jg-219706-instance" {
  ami           = "ami-048f6ed62451373d9" 
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.jg-219706-ssh-sg.id]
  subnet_id = aws_subnet.jg-219706-sn.id

tags = {
    Name      = "jg-219706-instance"
    terraform = "True"
  }
}