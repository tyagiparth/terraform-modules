variable "storage_account_name" {
  description = "Name of the Storage Account."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "Azure region."
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the resources."
  type        = map(string)
  default     = {}
}

variable "storage_account_tier" {
  description = "Storage account tier."
  type        = string
}

variable "account_replication_type" {
  description = "Type of replication for the storage account."
  type        = string
  default     = "LRS"
}
