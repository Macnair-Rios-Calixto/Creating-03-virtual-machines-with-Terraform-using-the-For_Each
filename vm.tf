# Create a Virtual Machines
resource "azurerm_windows_virtual_machine" "vm" {
  for_each                = toset(var.vm_name)  
  name                    = each.value
  location                = var.location
  resource_group_name     = azurerm_resource_group.rg.name
  size                    = "Standard_B1s"
  admin_username          = "admin.macnair"
  admin_password          = "P@ssw0rd2021"
  computer_name           = each.value
  network_interface_ids   = [azurerm_network_interface.nic[each.key].id]

  os_disk {
    name                  = "osdisk-${each.key}"
    caching               = "ReadWrite"
    storage_account_type  = "Standard_LRS"
         
  }
  
  source_image_reference {
    publisher             = "MicrosoftWindowsServer"
    offer                 = "WindowsServer"
    sku                   = "2019-Datacenter"
    version               = "latest"
  }
} 