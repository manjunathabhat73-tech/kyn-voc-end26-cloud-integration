output "resource_group_name" {
  description = "this is the name of the resource group"
  value       = azurerm_resource_group.my_rg.name #from where it is picking up the value, it is picking from the resource block of resource.tf file
}

output "resource_group_location" {
  description = "this is the location of the resource group"
  value       = azurerm_resource_group.my_rg.location
}

output "vnet_name" {
  description = "this is the name of the vnet"
  value       = azurerm_virtual_network.vnet.name
}