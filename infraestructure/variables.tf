variable "location" {
  type    = string
  default = "France Central"
}
variable "project_name" {
  type = string
}
variable "directory" {
  type = object({
    sku = string
  })
  default = {
    sku = "Standard"
  }
}