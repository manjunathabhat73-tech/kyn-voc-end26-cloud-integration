resource "azurerm_subnet" "web_subnet" {
  name                 = "${local.resource_name_prefix}-${var.subnet_name}"
  resource_group_name  = azurerm_resource_group.my_rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.subnet_address_prefixes
}