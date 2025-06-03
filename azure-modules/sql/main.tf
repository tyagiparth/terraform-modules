resource "azurerm_mssql_server" "server" {
  name                         = var.server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.admin_login
  administrator_login_password = var.admin_password
  tags                         = local.tags

  minimum_tls_version = "1.2"


  identity {
    type = "SystemAssigned"
  }
}

resource "azurerm_mssql_database" "db" {
  name                        = var.database_name
  server_id                   = azurerm_mssql_server.server.id
  collation                   = "SQL_Latin1_General_CP1_CI_AS"
  sku_name                    = var.sku_name
  max_size_gb                 = var.max_size_gb
  zone_redundant              = false
  read_scale                  = false
  auto_pause_delay_in_minutes = var.auto_pause_delay_in_minutes
  min_capacity                = var.min_capacity
  license_type                = "LicenseIncluded"
  tags                        = local.tags
  lifecycle {
    ignore_changes = [auto_pause_delay_in_minutes]
  }
}

resource "azurerm_mssql_firewall_rule" "rules" {
  for_each = { for rule in var.firewall_rules : rule.name => rule }

  name             = each.value.name
  server_id        = azurerm_mssql_server.server.id
  start_ip_address = each.value.start_ip
  end_ip_address   = each.value.end_ip
}


resource "azurerm_private_endpoint" "sql_pe" {
  count               = var.enable_private_endpoint ? 1 : 0
  name                = "${var.server_name}-pe"
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = var.subnet_id

  private_service_connection {
    name                           = "${var.server_name}-sqlpsc"
    private_connection_resource_id = azurerm_mssql_server.server.id
    subresource_names              = ["sqlServer"]
    is_manual_connection           = false
  }
}

resource "azurerm_private_dns_zone" "sql" {
  count               = var.enable_private_endpoint ? 1 : 0
  name                = "privatelink.database.windows.net"
  resource_group_name = var.resource_group_name
}

resource "azurerm_private_dns_zone_virtual_network_link" "sql_link" {
  count                 = var.enable_private_endpoint ? 1 : 0
  name                  = "${var.server_name}-dnslink"
  resource_group_name   = var.resource_group_name
  private_dns_zone_name = azurerm_private_dns_zone.sql[0].name
  virtual_network_id    = var.virtual_network_id
  registration_enabled  = false
}

resource "azurerm_private_dns_a_record" "sql_record" {
  count               = var.enable_private_endpoint ? 1 : 0
  name                = azurerm_mssql_server.server.name
  zone_name           = azurerm_private_dns_zone.sql[0].name
  resource_group_name = var.resource_group_name
  ttl                 = 300
  records             = [azurerm_private_endpoint.sql_pe[0].private_service_connection[0].private_ip_address]
}