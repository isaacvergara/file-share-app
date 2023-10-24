# Resource group
resource "azurerm_resource_group" "file_share_rg" {
  location = var.location
  name     = join("-", ["rg", lower(var.project_name)])
}

# AAD B2C directory
resource "random_uuid" "directory_id" {
}

/*
resource "azurerm_aadb2c_directory" "directory" {
  data_residency_location = "Europe"
  display_name = join("-", ["tenant", lower(var.project_name)])
  domain_name = join(".", [random_uuid.directory_id, "onmicrosoft.com"])
  resource_group_name = azurerm_resource_group.file_share_rg.name
  sku_name = var.directory.sku
}
*/