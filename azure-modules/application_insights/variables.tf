variable "application_insights_name" {
  description = "Name of the Application Insight resource."
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
variable "log_analytics_workspace_id" {
  description = "The ID of the Log Analytics Workspace to link with Application Insights."
  type        = string
}
variable "application_type" {
  description = "The type of application (e.g., web, other)."
  type        = string
  default     = "web"
}
