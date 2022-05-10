resource "aws_vpc" "my_vpc" {
  cidr_block = "172.16.0.0/16"

  tags = {
    Name = "VPC-1"
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "public subnet"
  }
}

resource "aws_instance" "foo" {
  ami           = "ami-0022f774911c1d690" # us-east-1
  instance_type = "t2.micro"
}
