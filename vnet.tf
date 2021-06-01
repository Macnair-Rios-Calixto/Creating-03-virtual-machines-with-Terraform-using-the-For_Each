# Create a Virtual Network
resource "azurerm_virtual_network" "vn" {
  name                  = var.virtual_network_name
  location              = var.location
  resource_group_name   = azurerm_resource_group.rg.name
  address_space         = ["10.0.0.0/16"]
}