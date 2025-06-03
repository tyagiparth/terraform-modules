variable "diagnostic_setting_name" {
  description = "Name of the diagnostic settings."
  type        = string
}

variable "target_resource_id" {
  description = "The id fo the target resource."
  type        = string
}

variable "log_analytics_workspace_id" {
  description = "Azure log analytics workspace ID."
  type        = string
}
variable "storage_account_id" {
  description = "The ID of the storage account to which logs will be sent."
  type        = string
}