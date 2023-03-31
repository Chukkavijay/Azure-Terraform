resource "azurerm_storage_account" "straccounts" {
  count                    = 3 #0,1,2 
  name                     = lower("${var.rg_name}${var.env}00${count.index+1}")
  resource_group_name      = azurerm_resource_group.devopsazrg.name
  location                 = azurerm_resource_group.devopsazrg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = var.env
  }
}