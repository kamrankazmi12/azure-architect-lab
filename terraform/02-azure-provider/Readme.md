# 02 - AzureRM Provider

## Objective

Configure Terraform to work with Microsoft Azure using the AzureRM provider.

## Concepts

This lab introduces:

- Terraform providers
- AzureRM
- Provider source
- Provider version constraints
- Provider configuration

## Configuration

The AzureRM provider enables Terraform to manage Microsoft Azure infrastructure.

```hcl
terraform {
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
