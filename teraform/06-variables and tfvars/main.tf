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

  common_tags = {
    environment = var.environment
    project     = var.project_name
    managed_by  = "terraform"
  }
}

# ========================================
# Azure Resources
# ========================================

resource "azurerm_resource_group" "lab" {
  name     = local.resource_group_name
  location = var.location
  tags     = local.common_tags
}

# ========================================
# Terraform CLI Commands
# ========================================

# Format configuration
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

# Inspect state
# terraform show

# Destroy lab infrastructure
# terraform destroy
