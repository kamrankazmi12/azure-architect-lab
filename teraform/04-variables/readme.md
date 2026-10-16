# 04 - Terraform Variables

## Objective

Learn how Terraform input variables make infrastructure configurations reusable and configurable.

## Architecture

Terraform Variables
       ↓
Terraform Configuration
       ↓
AzureRM Provider
       ↓
Azure Resource Group

## Variables

This lab uses variables for:

- Resource Group name
- Azure region
- Environment

Example:

```hcl
variable "location" {
  description = "Azure region for the resources"
  type        = string
  default     = "Norway East"
}
```

The variable is referenced using:

```hcl
location = var.location
```

## Terraform Workflow

```bash
terraform fmt
terraform init
terraform validate
terraform plan
terraform apply
terraform destroy
```

## Key Learning

Hard-coded values make infrastructure less reusable.

Terraform variables allow configuration values to be changed without modifying the resource definition itself.
