provider "azurerm" {
    version = "=2.20.0"
    features  {}
}

# Create a resource group
resource "azurerm_resource_group" "rgalmResourceGrp" {
  name     = "example-resources"
  location = "Canada east"
}

