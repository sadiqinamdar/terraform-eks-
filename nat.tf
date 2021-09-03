resource "aws_nat_gateway" "nat1" {
  allocation_id = aws_eip.eip1.id
  subnet_id     = aws_subnet.public_1.id

  tags = {
    Name = "NAT 1"
  }
}

resource "aws_nat_gateway" "nat2" {
  allocation_id = aws_eip.eip2.id
  subnet_id     = aws_subnet.public_2.id

  tags = {
    Name = "NAT 2"
  }
}
