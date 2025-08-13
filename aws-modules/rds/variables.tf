variable "db_subnet_ids" {
  description = "List of subnet IDs for the RDS instance"
  type        = list(string)    
}

variable "db_engine" {
  description = "Database engine for the RDS instance"
  type        = string
}

variable "db_instance_class" {
  description = "Instance class for the RDS instance"
  type        = string 
}

variable "allocated_storage" {
  description = "Allocated storage for the RDS instance in GB"
  type        = number
}

variable "vpc_security_group_ids" {
  description = "List of VPC security group IDs for the RDS instance"
  type        = list(string)
  default     = []  
}