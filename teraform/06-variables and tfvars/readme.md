# 06 - Terraform Variables

## Objective

Use Terraform input variables together with local values and outputs to create reusable Azure infrastructure.

## Configuration Flow

terraform.tfvars
↓
Input Variables
↓
Local Values
↓
Azure Resources
↓
Output Values

## Input Variables

Variables allow configuration values to be supplied without modifying resource definitions.

Example:

```hcl
variable "environment" {
  description = "Deployment environment"
  type        = string
}
