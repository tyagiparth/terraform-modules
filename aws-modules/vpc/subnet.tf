resource "aws_subnet" "subnets" {
  count                = length(var.subnet_cidrs)
  vpc_id               = aws_vpc.my_vpc.id
  cidr_block           = element(var.subnet_cidrs, count.index)
  availability_zone    = element(var.availability_zones, count.index)
}