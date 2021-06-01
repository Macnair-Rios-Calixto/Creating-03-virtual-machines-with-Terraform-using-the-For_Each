# Provider
terraform {
  required_version = ">= 0.14, < 0.15"
}

provider "azurerm" {
    subscription_id   = "Insira a sua Subscription"
    tenant_id         = "Insira o seu Tenant"
    features {}
}

# Resource Group
resource "azurerm_resource_group" "rg" {
  name     =  var.rgname
  location =  var.location
}

