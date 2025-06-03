resource "azurerm_monitor_diagnostic_setting" "ezshop_monitoring" {
  name                       = var.diagnostic_setting_name
  target_resource_id         = var.target_resource_id
  log_analytics_workspace_id = var.log_analytics_workspace_id
  storage_account_id         = var.storage_account_id

  metric {
    category = "AllMetrics"
  }
}


