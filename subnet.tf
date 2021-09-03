# public subnet 

resource "aws_subnet" "public_1" {
  vpc_id                  = aws_vpc.eks.id
  cidr_block              = "192.168.0.0/18"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = true
  tags = {
    Name                        = "public-mumbai-1a"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/role/elb"    = 1
  }
}

resource "aws_subnet" "public_2" {
  vpc_id                  = aws_vpc.eks.id
  cidr_block              = "192.168.64.0/18"
  availability_zone       = "ap-south-1b"
  map_public_ip_on_launch = true
  tags = {
    Name                        = "public-mumbai-1b"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/role/elb"    = 1
  }
}

#private subnet

resource "aws_subnet" "private_1" {
  vpc_id            = aws_vpc.eks.id
  cidr_block        = "192.168.128.0/18"
  availability_zone = "ap-south-1a"
  tags = {
    Name                              = "private-mumbai-1a"
    "kubernetes.io/cluster/eks"       = "shared"
    "kubernetes.io/role/internal-elb" = 1
  }
}

resource "aws_subnet" "private_2" {
  vpc_id            = aws_vpc.eks.id
  cidr_block        = "192.168.192.0/18"
  availability_zone = "ap-south-1b"
  tags = {
    Name                        = "private-mumbai-1b"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/role/elb"    = 1
  }
}