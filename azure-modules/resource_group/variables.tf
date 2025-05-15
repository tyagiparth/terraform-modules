variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The Azure location where the resource group will be created."
  type        = string
  default     = "Central India"
}

variable "tags" {
  description = "A map of tags to assign to the resource group."
  type        = map(string)
  default     = {}
}