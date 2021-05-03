##Creación del VPC
resource "aws_vpc" "jg-219706-vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "jg-219706"
  }
}

