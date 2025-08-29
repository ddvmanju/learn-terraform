variable "s1" {
    default = "Hello"
    }

variable "n1" {
    default = 2
    }

variable "b1" {
    default = true
    }

# Data types that transform supports
# 1. string
# 2. Number
# 3. Boolean

# string only require quotes, that to be only double quotes. Terraform does not have single quotes support.

variable "v1" {
    default = "Hello"
    }

variable "v2" {
    default = [
        "Hello",
        2,
        false
        ]
    }

variable "v3" {
    default ={
        course = "devops"
        cloud = "azure"
        }
    }
# variable Type that terraform supports
# 1. plain
# 2. List ( A key having multiple values, And each value can be a different data type)
# 3. Map ( A key having again keys and values)

## Access your variables
output "v1" {
    value = var.v1
    }

# while accessing variable, if we have some string combination then we can access it with ${}
output "v2" {
    value = "${var.v1} - John"
    }

# Access your variable
output "o1" {
    value = var.v1
    }

# while accessing variable, if we have some string combination then we can access it with ${}
output "o2" {
    value = "${var.v1} - John"
    }

# Access a value of list
output "o3" {
    value = var.v2[0]
    }

# Access a value of map
output "o4" {
    value = var.v3["cloud"]
    }

# so far we are hardcoding the values in variable, most times those come as input
# values from terraform.tfvars, terraform picks this value automatically, other tfars need to be parsed.
variable "v10" {}
output "o10" {
    value = var.v10
    }


# we can also access values from other tfars too, but we need to parse that input
ex: dev.tfars
variable "env" {}
output "env"{
    value = var.env
    }

#   Terraform can picks the files automatically if the values are from *.auto.tfvars

