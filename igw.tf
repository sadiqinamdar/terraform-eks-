resource "aws_internet_gateway" "eks" {
  vpc_id = aws_vpc.eks.id
  tags = {
    Name = "eks"
  }
}


output "nat_id" {
  value       = aws_internet_gateway.eks.id
  sensitive   = false
  description = "NAT ID"
}
