/*resource "azurerm_storage_account" "roysa" {
   name                     = "mysaaccount${random_string.varstring.id}"
  resource_group_name      = azurerm_resource_group.aroy_rg.name
  location                 = azurerm_resource_group.aroy_rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "prod"
  }
}
*/