output "log_analytics_workspace_id" {
  value       = azurerm_log_analytics_workspace.ezshop_monitoring.id
  sensitive   = true
  description = "The ID of the Log Analytics Workspace."
}

