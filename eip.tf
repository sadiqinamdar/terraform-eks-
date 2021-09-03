resource "aws_eip" "eip1" {
  depends_on = [aws_internet_gateway.eks]
}

resource "aws_eip" "eip2" {
  depends_on = [aws_internet_gateway.eks]
}

