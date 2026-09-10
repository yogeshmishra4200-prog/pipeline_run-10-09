resource "azurerm_resource_group" "rg11" {
  for_each = var.rgs
  name     = each.value.name
  location = each.value.location
  
}