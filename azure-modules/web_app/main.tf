resource "azurerm_linux_web_app" "ezshop" {
  name                = var.app_service_name
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id = var.app_service_plan_id
  site_config {
    always_on = false
  }


  app_settings = var.app_service_settings
  storage_account {
    name         = var.storage_account_name
    access_key   = var.storage_account_access_key
    type         = var.storage_account_type
    account_name = var.storage_account_name
    share_name   = var.storage_account_container_name
  }
}