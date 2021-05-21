resource "aws_subnet" "public_cidr1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_cidr1
  availability_zone = data.aws_availability_zones.available.names[0]
  tags              = var.tags_public
}

resource "aws_subnet" "public_cidr2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_cidr2
  availability_zone = data.aws_availability_zones.available.names[1]
  tags              = var.tags_public
}

resource "aws_subnet" "public_cidr3" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_cidr3
  availability_zone = data.aws_availability_zones.available.names[2]
  tags              = var.tags_public
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id
  tags   = var.tags
}