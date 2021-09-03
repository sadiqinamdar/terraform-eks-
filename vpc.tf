resource "aws_vpc" "eks" {
  cidr_block                       = "192.168.0.0/16"
  instance_tenancy                 = "default"
  enable_dns_support               = true
  enable_dns_hostnames             = true
  enable_classiclink               = false
  enable_classiclink_dns_support   = false
  assign_generated_ipv6_cidr_block = false
  tags = {
    Name = "eks"
  }
}

output "vpc_id" {
  value       = aws_vpc.eks.id
  description = "Created VPC ID"
}
