resource "aws_vpc" "evaluacion-vpc" {
  cidr_block       = "10.0.1.0/24"
  instance_tenancy = "default"

  tags = {
    Name = "evaluacion-vpc"
  }
}
