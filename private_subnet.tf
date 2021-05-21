resource "aws_subnet" "private_cidr1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_cidr1
  availability_zone = data.aws_availability_zones.available.names[0]
  tags              = var.tags_private
}

resource "aws_subnet" "private_cidr2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_cidr2
  availability_zone = data.aws_availability_zones.available.names[1]
  tags              = var.tags_private
}

resource "aws_subnet" "private_cidr3" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_cidr3
  availability_zone = data.aws_availability_zones.available.names[2]
  tags              = var.tags_private
}

resource "aws_eip" "gwy" {
  vpc  = true
  tags = var.tags
}

resource "aws_nat_gateway" "gw" {
  allocation_id = aws_eip.gwy.id
  subnet_id     = aws_subnet.public_cidr1.id
  tags          = var.tags
}