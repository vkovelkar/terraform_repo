resource "aws_route" "lab_routetable" {
  vpc_id = aws_vpc.Lab_VPC

  route {
    cidr_block = "0.0.1.0/0"
    gateway_id = aws_internet_gateway.lab_gateway.id
  }
}