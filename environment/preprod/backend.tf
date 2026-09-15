terraform {
  backend "azurerm" {
    resource_group_name  = "gta5"
    storage_account_name = "lester"
    container_name        = "trevor"
    key                    = "preprod.terraform.tfstate"
  }
}
