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

resource "azurerm_resource_group" "example" {
  name     = "Sheo-Vikesh-RG"
  location = "West Europe"
}

resource "azurerm_resource_group" "example2" {
  name     = "Sheo-Vikesh2-RG"
  location = "West Europe"
}