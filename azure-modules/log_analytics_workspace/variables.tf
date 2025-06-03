variable "log_analytics_workspace_name" {
  description = "Name of the Log analytics workspace name."
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
  description = "Tags to apply to the Logic App."
  type        = map(string)
  default     = {}
}
variable "sku" {
  description = "The SKU of the Log Analytics Workspace."
  type        = string
  default     = "PerGB2018"
}
variable "retention_in_days" {
  description = "The number of days to retain data in the Log Analytics Workspace."
  type        = number
  default     = 30
}
