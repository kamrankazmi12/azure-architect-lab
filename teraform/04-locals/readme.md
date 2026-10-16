# 04 - Terraform Locals

## Objective

Learn how local values can reduce duplication and improve readability in Terraform configurations.

## Local Values

Locals define reusable values inside a Terraform module.

Example:

```hcl
locals {
  location    = "Norway East"
  environment = "lab"
}
