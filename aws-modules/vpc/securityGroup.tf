resource "aws_security_group" "db_security_group" {
  vpc_id = aws_vpc.my_vpc.id

  ingress = [
    {
      protocol    = "tcp"
      from_port   = 3306
      to_port     = 3306
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]

  egress = [
    {
      protocol    = "tcp"
      from_port   = 0
      to_port     = 0
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}
