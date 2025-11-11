resource "azurerm_storage_account" "stgacc2" {
    depends_on = [ azurerm_resource_group.resgr1 ]
  name                     = "lotustemple123"
  resource_group_name      = "redfort1"
  location                 = "East US"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}