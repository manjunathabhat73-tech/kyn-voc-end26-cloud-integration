/*resource "azurerm_windows_virtual_machine" "man_vm" {
  name                = "${local.resource_name_prefix}-vm"
  location            = azurerm_resource_group.my_rg.location #it get from the state file
  resource_group_name = azurerm_resource_group.my_rg.name
  size                = "Standard_D2s_v3"
  admin_username      = "adminuser"
  admin_password      = "King@12345678"
  network_interface_ids = [
    azurerm_network_interface.web_nic.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}
*/