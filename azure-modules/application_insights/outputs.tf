output "application_insights_instrumentation_key" {
  value     = azurerm_application_insights.ezshop_monitoring.instrumentation_key
  sensitive = true
}
output "application_insights_id" {
  value = azurerm_application_insights.ezshop_monitoring.id
}
output "application_insights_app_id" {
  value = azurerm_application_insights.ezshop_monitoring.app_id
}
output "application_insights_connection_string" {
  value       = azurerm_application_insights.ezshop_monitoring.connection_string
  sensitive   = true
  description = "The connection string for the Application Insights resource."
}