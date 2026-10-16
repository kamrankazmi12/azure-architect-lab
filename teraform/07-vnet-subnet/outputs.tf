output "resource_group_name" {
  description = "Name of the Resource Group"
  value       = azurerm_resource_group.network.name
}

output "vnet_name" {
  description = "Name of the Virtual Network"
  value       = azurerm_virtual_network.main.name
}

output "vnet_id" {
  description = "Resource ID of the Virtual Network"
  value       = azurerm_virtual_network.main.id
}

output "subnet_name" {
  description = "Name of the application subnet"
  value       = azurerm_subnet.app.name
}

output "subnet_id" {
  description = "Resource ID of the application subnet"
  value       = azurerm_subnet.app.id
}
