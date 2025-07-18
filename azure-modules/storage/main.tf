resource "azurerm_storage_account" "store" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.account_replication_type

  tags = local.tags
}