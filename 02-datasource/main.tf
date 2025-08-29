data "azurerm_resource_group" "example" {
  name = "project-setup1"
}

output "rg" {
    value = data.azurerm_resource_group.example
    }
