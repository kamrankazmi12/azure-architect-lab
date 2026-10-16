output "resource_group_name" {
  description = "Resource Group name"
  value       = azurerm_resource_group.network.name
}

output "vnet_name" {
  description = "Virtual Network name"
  value       = azurerm_virtual_network.main.name
}

output "subnet_id" {
  description = "Application subnet resource ID"
  value       = azurerm_subnet.app.id
}

output "network_security_group_name" {
  description = "Network Security Group name"
  value       = azurerm_network_security_group.app.name
}

output "network_security_group_id" {
  description = "Network Security Group resource ID"
  value       = azurerm_network_security_group.app.id
}
