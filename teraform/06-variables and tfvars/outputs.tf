output "resource_group_name" {
  description = "Name of the deployed Resource Group"
  value       = azurerm_resource_group.lab.name
}

output "resource_group_location" {
  description = "Azure region of the Resource Group"
  value       = azurerm_resource_group.lab.location
}

output "resource_group_id" {
  description = "Resource ID of the Resource Group"
  value       = azurerm_resource_group.lab.id
}
