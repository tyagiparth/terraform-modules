output "sql_server_name" {
  value = azurerm_mssql_server.server.name
}

output "sql_server_fqdn" {
  value = azurerm_mssql_server.server.fully_qualified_domain_name
}

output "sql_database_name" {
  value = azurerm_mssql_database.db.name
}

output "private_ip" {
  value = var.enable_private_endpoint ? azurerm_private_endpoint.sql_pe[0].private_service_connection[0].private_ip_address : null
}