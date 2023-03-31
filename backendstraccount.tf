
# #Since we have removed RG and STR Account from State, following code is commendted to
# #avoid resource creation.

# resource "azurerm_resource_group" "devopsterraformstate" {
#   name     = "devopsterraformstate"
#   location = "eastus"
# }

# resource "azurerm_storage_account" "devopsstraccount" {
#   name                     = "devopsdevstate"
#   resource_group_name      = azurerm_resource_group.devopsterraformstate.name
#   location                 = azurerm_resource_group.devopsterraformstate.location
#   account_tier             = "Standard"
#   account_replication_type = "LRS"

#   tags = {
#     environment = "dev"
#   }
# }