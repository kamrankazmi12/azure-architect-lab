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

# ========================================
# Local Values
# ========================================

locals {
  resource_group_name = "rg-${var.project_name}-${var.environment}"
  vnet_name           = "vnet-${var.project_name}-${var.environment}"
  subnet_name         = "snet-app-${var.environment}"

  common_tags = {
    environment = var.environment
    project     = var.project_name
    managed_by  = "terraform"
  }
}

# ========================================
# Resource Group
# ========================================

resource "azurerm_resource_group" "network" {
  name     = local.resource_group_name
  location = var.location
  tags     = local.common_tags
}

# ========================================
# Virtual Network
# ========================================

resource "azurerm_virtual_network" "main" {
  name                = local.vnet_name
  location            = azurerm_resource_group.network.location
  resource_group_name = azurerm_resource_group.network.name
  address_space       = var.vnet_address_space

  tags = local.common_tags
}

# ========================================
# Subnet
# ========================================

resource "azurerm_subnet" "app" {
  name                 = local.subnet_name
  resource_group_name  = azurerm_resource_group.network.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = var.subnet_address_prefix
}

# ========================================
# Terraform CLI Commands
# ========================================

# terraform fmt

# terraform init

# terraform validate

# terraform plan

# terraform apply

# terraform output

# terraform show

# terraform destroy
