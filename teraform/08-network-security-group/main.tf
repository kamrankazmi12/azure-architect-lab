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
  nsg_name            = "nsg-app-${var.environment}"

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
# Network Security Group
# ========================================

resource "azurerm_network_security_group" "app" {
  name                = local.nsg_name
  location            = azurerm_resource_group.network.location
  resource_group_name = azurerm_resource_group.network.name

  tags = local.common_tags
}

# ========================================
# NSG Rule
# Allow HTTPS inbound
# ========================================

resource "azurerm_network_security_rule" "allow_https" {
  name                        = "Allow-HTTPS-Inbound"
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "443"
  source_address_prefix       = "Internet"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.network.name
  network_security_group_name = azurerm_network_security_group.app.name
}

# ========================================
# Associate NSG with Subnet
# ========================================

resource "azurerm_subnet_network_security_group_association" "app" {
  subnet_id                 = azurerm_subnet.app.id
  network_security_group_id = azurerm_network_security_group.app.id
}

# ========================================
# Terraform CLI Commands
# ========================================

# Format Terraform files
# terraform fmt

# Initialize Terraform
# terraform init

# Validate configuration
# terraform validate

# Preview changes
# terraform plan

# Deploy infrastructure
# terraform apply

# Display outputs
# terraform output

# Inspect resources/state
# terraform show

# Destroy lab infrastructure
# terraform destroy
