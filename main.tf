
resource "azurerm_resource_group" "example" {
  name     = "danvariable-rg"
  location = "Australia East"
}

resource "azurerm_service_plan" "example" {
  name                = "danvariable-asp"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  sku_name            = "P1v2"
  os_type             = "Windows"
}

resource "azurerm_windows_web_app" "example" {
  name                = "danvariable-win"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_service_plan.example.location
  service_plan_id     = azurerm_service_plan.example.id

  site_config {}
}