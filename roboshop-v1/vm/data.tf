data "azurerm_resource_group" "example" {
  name = "project-setup1"
}

data "azurerm_subnet" "example" {
  name                 = "Default"
  virtual_network_name = "project-setup-network"
  resource_group_name  = data.azurerm_resource_group.example.name

 }