#module is group of resources
module "sample" {
    source ="./sample"
    x = var.x
    y = var.y
    }

variable "x" {}
variable "y" {}