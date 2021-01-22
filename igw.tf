resource "aws_internet_gateway" "lab_gateway" {
  vpc_id = aws_vpc.Lab_VPC.id

}