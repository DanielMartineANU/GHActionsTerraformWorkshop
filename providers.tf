terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "=4.4.0"
    }
  }
}

provider "azurerm" {
    features {}
    subscription_id = "0de08e6a-b55f-4178-8ca1-7d72123d6076"
    use_cli = true
    resource_provider_registrations = "none"
 }