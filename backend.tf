terraform {
  backend "azurerm" {
    resource_group_name = "workshop-danrg"
    storage_account_name = "workshopdansan"
    container_name = "danactionsworkshop"
    key = "random1234"
  }
}

