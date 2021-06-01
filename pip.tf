# Create a public IP 
resource "azurerm_public_ip" "pip" {
  for_each              = toset(var.vm_name) 
  name                  = "pip-${each.key}" 
  resource_group_name   = azurerm_resource_group.rg.name
  location              = var.location
  allocation_method     = "Static"
  sku                   = "Basic"
}