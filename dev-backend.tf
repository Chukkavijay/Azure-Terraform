terraform {
  backend "azurerm" {
    resource_group_name  = "devopsterraformstate"
    storage_account_name = "devopsdevstate"
    container_name       = "tfstate"
    key                  = "dev-terraform.tfstate"
  }

}