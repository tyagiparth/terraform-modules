variable "logic_app_name" {
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
variable "tags" {
  description = "Tags to apply to the Logic App."
  type        = map(string)
  default     = {}
}
