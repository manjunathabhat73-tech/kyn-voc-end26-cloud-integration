resource "azurerm_virtual_network" "vnet" {
  name                = "${local.resource_name_prefix}-${var.vnet_name}"
  location            = azurerm_resource_group.my_rg.location #it get from the state file
  resource_group_name = azurerm_resource_group.my_rg.name
  address_space       = var.vnet_address_space
  tags                = local.project_tags
}