# Create a Subnet
resource "azurerm_subnet" "subnet" {
  name                   = var.subnet
  resource_group_name    = azurerm_resource_group.rg.name
  virtual_network_name   = azurerm_virtual_network.vn.name
  address_prefixes       = ["10.0.1.0/24"]
}