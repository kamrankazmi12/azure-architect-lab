# 03 - Azure Resource Group

## Objective

Deploy my first Microsoft Azure resource using Terraform.

## Architecture

Terraform
    ↓
AzureRM Provider
    ↓
Azure Resource Group

## Resource

This lab creates an Azure Resource Group named:

`rg-kamran-tf-lab`

Region:

`Norway East`

## Tags

The Resource Group includes tags for:

- Environment
- Management method
- Project identification

## Terraform Workflow

```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
