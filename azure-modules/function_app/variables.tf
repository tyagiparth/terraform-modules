variable "function_app_service_plan_name" {
  description = "Name of the Function App Service Plan."
  type        = string
}

variable "function_app_name" {
  description = "Name of the Function App."
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

variable "app_service_plan_id" {
  description = "App Service plan ID to use for the Function App."
  type        = string
}

variable "storage_account_name" {
  description = "Name of the storage account to use for the Function App."
  type        = string
}

variable "storage_account_access_key" {
  description = "Access key for the storage account."
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the resources."
  type        = map(string)
  default     = {}
}

variable "function_app_settings" {
  description = "A map of application settings for the Function App."
  type        = map(string)
  default     = {}
}

variable "os_type" {
  description = "The OS type for the Function App (e.g., Linux, Windows)."
  type        = string
  default     = "Linux"
}

variable "sku_name" {
  description = "SKU Size for the Function App Service Plan (e.g., Y1 for Consumption)."
  type        = string
  default     = "Y1"
}
