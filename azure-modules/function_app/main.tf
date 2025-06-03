resource "azurerm_service_plan" "function_plan" {
  name                = var.function_app_service_plan_name
  location            = var.location
  resource_group_name = var.resource_group_name
  os_type             = var.os_type
  sku_name            = var.sku_name
  tags                = var.tags
}

resource "azurerm_linux_function_app" "ezshop_function_app" {
  name                = var.function_app_name
  resource_group_name = var.resource_group_name
  location            = var.location

  storage_account_name       = var.storage_account_name
  storage_account_access_key = var.storage_account_access_key
  service_plan_id        = azurerm_service_plan.function_plan.id
  tags                = var.tags
  app_settings        = var.function_app_settings

  site_config {}
}
