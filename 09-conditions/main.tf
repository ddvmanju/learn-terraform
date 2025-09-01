variable "a" {}

  output "test" {
    value = var.a > 10 ? "a is greater than 10" : "a is less than 10"
      }

# these conditions with combination of loop can be used to determine whether a resource to run or not

resource "null_resource" "test" {
  count = var.a > 10 ? 1 : 0
}