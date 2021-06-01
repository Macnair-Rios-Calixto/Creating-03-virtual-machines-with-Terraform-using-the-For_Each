# Create a Virtual Network Interface 
resource "azurerm_network_interface" "nic" {
  for_each              = toset(var.vm_name)  
  name                  = "nic-${each.key}" 
  location              = var.location
  resource_group_name   = azurerm_resource_group.rg.name

  ip_configuration {
    name                                   = "internal"
    subnet_id                              = azurerm_subnet.subnet.id
    private_ip_address_allocation          = "Dynamic"
    public_ip_address_id                   = azurerm_public_ip.pip[each.key].id
  }
}