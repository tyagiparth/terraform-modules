resource "azurerm_application_insights" "ezshop_monitoring" {
  name                = var.application_insights_name
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = local.tags
  workspace_id        = var.log_analytics_workspace_id
  application_type    = var.application_type
}