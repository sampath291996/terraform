provider "aws" {
  version = "~> 4.0"
  region  = "ap-south-1"
}
resource "aws_vpc" "example" {
  cidr_block = "30.0.0.0/16"
}
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.example.id

  tags = {
    Name = "main"
  }
}
resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.example.id
  cidr_block = "30.0.1.0/24"

  tags = {
    Name = "Main"
  }
}
