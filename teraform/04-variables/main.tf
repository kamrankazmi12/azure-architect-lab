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
  name     = var.resource_group_name
  location = var.location

  tags = {
    environment = var.environment
    managed_by  = "terraform"
    project     = "terraform-learning"
  }
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

# View current Terraform state
# terraform show

# Destroy lab infrastructure
# terraform destroy
