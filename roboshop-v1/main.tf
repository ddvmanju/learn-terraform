module "components" {
    for_each = var.components
    source = "./vm"
    component = each.value["name"]
    vm_size = each.value["vm_size"]

    }

variable "components"  {
    default = {

        frontend = {
            name = "frontend"
            vm_size = "Standard B2s"
        }

        mongodb = {
            name = "mongodb"
            vm_size = "Standard_DS1_v2"
        }
    }
}