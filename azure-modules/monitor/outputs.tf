output "diagnostic_setting_id" {
  value       = azurerm_monitor_diagnostic_setting.ezshop_monitoring.id
  description = "The ID of the Diagnostic Setting."
}