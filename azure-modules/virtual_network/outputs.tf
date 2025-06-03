output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}

output "subnet_ids" {
  value = { for s, subnet in azurerm_subnet.subnets : s => subnet.id }
}
