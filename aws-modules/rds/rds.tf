resource "aws_db_subnet_group" "db_subnet_group" {
  name       = "my-db-subnet-group"
  subnet_ids = var.db_subnet_ids
}

resource "aws_db_instance" "mydb" {
  engine                = var.db_engine
  instance_class        = var.db_instance_class
  allocated_storage     = var.allocated_storage
  db_subnet_group_name  = aws_db_subnet_group.db_subnet_group.name
  vpc_security_group_ids = var.vpc_security_group_ids
  skip_final_snapshot   = true
}