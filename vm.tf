resource "azurerm_linux_virtual_machine" "web_vm" {
  for_each            = var.linux_vms
  name                = "${local.resource_name_prefix}-${each.key}-vm"
  location            = azurerm_resource_group.my_rg.location #it get from the state file
  resource_group_name = azurerm_resource_group.my_rg.name
  size                = each.value.vm_size
  zone                = each.value.zone
  admin_username      = "azureuser"
  network_interface_ids = [
    azurerm_network_interface.web_nic[each.key].id,
  ]

  admin_ssh_key {
    username   = "azureuser"
    public_key = file("${path.module}/ssh-key/terraform-azure.pem.pub")
    #it will look for file in the current directory
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "ubuntu-24_04-lts"
    sku       = "server"
    version   = "latest"
  }
  custom_data = filebase64("${path.module}/app.sh")
}
