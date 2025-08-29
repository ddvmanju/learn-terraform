data "azurerm_resource_group" "example" {
  name = "project-setup1"
}

output "rg" {
    value = data.azurerm_resource_group.example
    }

provider "azurerm" {
    features{}
    subscription_id = "00f9828e-4aad-42e5-ac92-a3c54883cbd3"
    }