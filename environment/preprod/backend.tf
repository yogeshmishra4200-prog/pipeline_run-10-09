terraform {
  backend "azurerm" {
    resource_group_name  = "michale"
    storage_account_name = "franklinn"
    container_name        = "dabba"
    key                    = "preprod.terraform.tfstate"
  }
}
