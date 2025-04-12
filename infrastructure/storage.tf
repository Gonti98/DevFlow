provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "my_resource_group" {
  name     = "tfstate-rg"
  location = "North Europe"
}

resource "azurerm_storage_account" "my_storage_account" {
  name                     = "mytfstatestorage"
  resource_group_name       = azurerm_resource_group.my_resource_group.name
  location                 = azurerm_resource_group.my_resource_group.location
  account_tier              = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "my_container" {
  name                  = "tfstate-container"
  storage_account_name  = azurerm_storage_account.my_storage_account.name
  container_access_type = "private"
}

terraform {
  backend "azurerm" {
    resource_group_name  = azurerm_resource_group.my_resource_group.name
    storage_account_name = azurerm_storage_account.my_storage_account.name
    container_name       = azurerm_storage_container.my_container.name
    key                  = "terraform.tfstate"
  }
}

