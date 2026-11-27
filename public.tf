/*resource "azurerm_public_ip" "web_vm_publicip" {
  for_each            = var.linux_vms
  name                = "${local.resource_name_prefix}-${each.key}-publicip"
  location            = azurerm_resource_group.my_rg.location #it get from the state file
  resource_group_name = azurerm_resource_group.my_rg.name
  allocation_method   = "Static"
  sku                 = "Standard" #basic it will create the public ip in single az standard it will spread across all the az in your region
  zones               = [each.value.zone]
  tags = {
    environment = "Production"
  }
}
*/