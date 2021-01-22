resource "aws_subnet" "lab_public" {
  cidr_block = "10.0.1.0/24"
  vpc_id = "aws_vpc.Lab_VPC.id"
}
resource "aws_subnet" "lab_private" {
  cidr_block = "10.0.2.0/24"
  vpc_id = "aws_vpc.Lab_VPC.id"
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.lab_public.id
  route_table_id = aws_route.lab_routetable.id
}