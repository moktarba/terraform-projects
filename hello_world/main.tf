variable "myvar" {
  default = ["hello", "world"]
}

output "hello" {
    value = var.myvar
}