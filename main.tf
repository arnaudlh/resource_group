
resource "azurerm_resource_group" "rg" {
   for_each = var.resource_groups

   name     = "${var.prefix}${each.value}"
   location = var.location
   tags     = var.tags
}

