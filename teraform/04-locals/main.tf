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

# Local values used throughout this configuration
locals {
  resource_group_name = "rg-kamran-tf-lab"
  location            = "Norway East"
  environment         = "lab"

  common_tags = {
    environment = local.environment
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

# terraform fmt
# terraform init
# terraform validate
# terraform plan
# terraform apply
# terraform show
# terraform destroy
