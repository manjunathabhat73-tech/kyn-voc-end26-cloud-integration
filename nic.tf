resource "azurerm_network_interface" "web_nic" {
  for_each            = var.linux_vms
  name                = "${local.resource_name_prefix}-${each.key}-nic"
  location            = azurerm_resource_group.my_rg.location #it get from the state file
  resource_group_name = azurerm_resource_group.my_rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.web_subnet.id
    private_ip_address_allocation = "Dynamic"
    #public_ip_address_id          = azurerm_public_ip.web_vm_publicip[each.key].id
  }
}
/*
output "instance_publicip" {
  value = azurerm_public_ip.web_vm_publicip.ip_address
}*/