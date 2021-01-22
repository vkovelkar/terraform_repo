resource "aws_vpc" "east_region_vpc" {
    provider = aws.east
    cidr_block = "10.100.0.0/16"
    tags ={
        name = "east-region"
    }  
}

resource "aws_vpc" "west_region_vpc" {
    provider = aws.west
    cidr_block = "10.100.0.0/16"
    tags ={
        name = "west-region"
    }  
}