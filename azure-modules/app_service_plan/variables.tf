variable "app_service_plan_name" {
  description = "Name of the App service Plan."
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

variable "sku_name" {
  description = "SKU size e.g., B1, S1"
  type        = string
  default     = "F1"
}

variable "os_type" {
  description = "Kind of the App Service Plan."
  type        = string
  default     = "Linux"
}

variable "tags" {
  description = "A map of tags to assign to the resources."
  type        = map(string)
  default     = {}
}
