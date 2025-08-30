data "azurerm_resource_group" "example" {
  name = "project-setup1"
}

data "azurerm_subnet" "example" {
  name                 = "default"
  virtual_network_name = "Frontend-vnet"
  resource_group_name  = data.azurerm_resource_group.example.name
}