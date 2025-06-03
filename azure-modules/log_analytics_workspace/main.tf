resource "azurerm_log_analytics_workspace" "ezshop_monitoring" {
  name                = var.log_analytics_workspace_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.sku
  retention_in_days   = var.retention_in_days
  tags                = local.tags
}