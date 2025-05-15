variable "name" {
  description = "Name of the Virtual Network."
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

variable "address_space" {
  description = "List of address spaces for the VNet."
  type        = list(string)
}

variable "subnets" {
  description = "Map of subnets. Each must supply a name and address_prefix."
  type = map(object({
    name           = string
    address_prefix = string
  }))
}
