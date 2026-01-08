resource "azurerm_resource_group" "resgr1" {
  name     = "redfort1"
  location = "East US"
}

resource "azurerm_storage_account" "stgacc1" {
  name                     = "chandnichowk123"
  resource_group_name      = azurerm_resource_group.resgr1.name
  location                 = azurerm_resource_group.resgr1.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}
resource "azurerm_virtual_network" "vnet1" {
  name                = "myvnet01"
  location            = azurerm_resource_group.resgr1.location
  resource_group_name = azurerm_resource_group.resgr1.name
  address_space       = ["10.0.0.0/16"]
}


