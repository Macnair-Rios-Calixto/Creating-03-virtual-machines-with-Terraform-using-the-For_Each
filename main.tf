# Provider
terraform {
  required_version = ">= 0.14, < 0.15"
}

provider "azurerm" {
    subscription_id   = "Enter your Subscription"
    tenant_id         = "Enter your Tenant"
    features {}
}

# Resource Group
resource "azurerm_resource_group" "rg" {
  name     =  var.rgname
  location =  var.location
}

