output "region" {
  value = var.region
}

output "AZ" {
  value = data.aws_availability_zones.available.names[0]
}

output "vpc" {
  value = aws_vpc.main.id
}

output "private_subnet" {
  value = [
    aws_subnet.private_cidr1.id,
    aws_subnet.private_cidr2.id,
    aws_subnet.private_cidr3.id
  ]
}

output "public_subnet" {
  value = [
    aws_subnet.public_cidr1.id,
    aws_subnet.public_cidr2.id,
    aws_subnet.public_cidr3.id
  ]
}