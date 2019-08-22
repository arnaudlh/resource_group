output "name" {
  depends_on = [azurerm_resource_group.rg]

    value = {
    for group in keys(azurerm_resource_group.rg):
     group => azurerm_resource_group.rg[group].name
  }
}

output "ids" {
  depends_on = [azurerm_resource_group.rg]

  value = {
    for group in keys(azurerm_resource_group.rg):
     group => azurerm_resource_group.rg[group].id
}
}
