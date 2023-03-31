# Create a virtual network within the resource group
resource "azurerm_virtual_network" "devopsazrg-vnet1" {
  name = "${var.rg_name}-vnet1"
  #Implicit Dependency on RG Name
  resource_group_name = azurerm_resource_group.devopsazrg.name
  #Implicit Dependency on RG Location
  location      = azurerm_resource_group.devopsazrg.location
  address_space = [var.address_space]
}