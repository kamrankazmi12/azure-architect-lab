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

locals {
  resource_group_name = "rg-kamran-tf-lab"
  location            = "Norway East"

  common_tags = {
    environment = "lab"
    managed_by  = "terraform"
    project     = "terraform-learning"
  }
}

resource "azurerm_resource_group" "lab" {
  name     = local.resource_group_name
  location = local.location
  tags     = local.common_tags
}

# ========================================
# Terraform CLI Commands
# ========================================

# Format code
# terraform fmt

# Initialize working directory
# terraform init

# Validate configuration
# terraform validate

# Preview infrastructure changes
# terraform plan

# Create infrastructure
# terraform apply

# Display output values
# terraform output

# Inspect Terraform-managed resources
# terraform show

# Destroy lab infrastructure
# terraform destroy
