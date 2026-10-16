terraform {
  required_version = ">= 1.12.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "lab" {
  name     = "rg-kamran-tf-lab"
  location = "Norway East"

  tags = {
    environment = "lab"
    managed_by  = "terraform"
    project     = "terraform-learning"
  }
}
``
