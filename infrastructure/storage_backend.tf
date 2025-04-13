provider "azurerm" {
  features {}
  subscription_id = ${{ secrets.ARM_SUBSCRIPTION_ID }}
}

resource "azurerm_resource_group" "tf_backend" {
  name     = "terraform-backend-rg"
  location = "West Europe"
}

resource "azurerm_storage_account" "tf_backend" {
  name                     = "mytfbackendstorage001"
  resource_group_name      = azurerm_resource_group.tf_backend.name
  location                 = azurerm_resource_group.tf_backend.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "tf_state" {
  name                  = "tfstate"
  storage_account_id    = azurerm_storage_account.tf_backend.id
  container_access_type = "private"
}

