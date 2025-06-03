variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "East US"
}

variable "server_name" {
  description = "SQL Server name"
  type        = string
}

variable "admin_login" {
  description = "SQL Server admin username"
  type        = string
}

variable "admin_password" {
  description = "SQL Server admin password"
  type        = string
  sensitive   = true
}

variable "database_name" {
  description = "SQL Database name"
  type        = string
}

variable "sku_name" {
  description = "SKU name for the database. Basic tier is 'Basic'"
  type        = string
  default     = "Basic"
}

variable "max_size_gb" {
  description = "Max size of the database in GB"
  type        = number
  default     = 2
}

variable "auto_pause_delay_in_minutes" {
  description = "Time in minutes after which database is automatically paused (for serverless only, ignored in Basic tier)"
  type        = number
  default     = 15
}

variable "min_capacity" {
  description = "Minimum capacity for the database (ignored for Basic tier)"
  type        = number
  default     = 0
}

variable "tags" {
  description = "A map of tags to assign to the resources."
  type        = map(string)
  default     = {}
}

variable "firewall_rules" {
  type = list(object({
    name     = string
    start_ip = string
    end_ip   = string
  }))
  default     = []
  description = "List of firewall rules"
}

variable "enable_private_endpoint" {
  type        = bool
  default     = false
  description = "Enable private endpoint for SQL server"
}

variable "subnet_id" {
  type        = string
  default     = ""
  description = "Subnet ID for the private endpoint"
}

variable "virtual_network_id" {
  type        = string
  default     = ""
  description = "Virtual network ID to link private DNS zone"
}