output "storage_id" {
  value = azurerm_storage_account.store.id
}
output "storage_account_access_key" {
  value = azurerm_storage_account.store.primary_access_key
}
