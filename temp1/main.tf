provider "azurerm" {
  features {}
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.91.0"
    }
  }
}

resource "azurerm_resource_group" "resouregroup" {
  name     = "var.rgname"
  location = "West Europe"
}

resource "azurerm_storage_blob" "blobstorage" {
  name                   = "var.storagename"
  storage_account_name   = azurerm_storage_account.example.name
  storage_container_name = azurerm_storage_container.example.name
  type                   = "Block"
  source                 = "some-local-file.zip"
}
