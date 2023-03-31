# Create a resource group
resource "azurerm_resource_group" "devopsazrg" {
  name     = var.rg_name
  location = var.rg_location
}