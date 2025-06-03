variable "app_service_name" {
  description = "Name of the App Service."
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
  description = "App Service plan ID to use for the web App."
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

variable "storage_account_type" {
  description = "Type of the storage account to use for the Function App."
  type        = string
}
variable "storage_account_container_name" {
  description = "Name of the storage account container to use for the Function App."
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the resources."
  type        = map(string)
  default     = {}
}

variable "app_service_settings" {
  description = "A map of application settings for the Function App."
  type        = map(string)
  default     = {}
}
