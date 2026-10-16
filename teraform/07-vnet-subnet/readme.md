# 07 - Azure Virtual Network and Subnet

## Objective

Build foundational Azure networking infrastructure using Terraform.

## Architecture

```text
Azure Resource Group
        │
        └── Virtual Network
             │
             │ 10.10.0.0/16
             │
             └── Application Subnet
                    10.10.1.0/24
```

## Resources

This lab creates:

- Azure Resource Group
- Azure Virtual Network
- Application Subnet

## Network Design

| Resource | Address Range |
|---|---|
| Virtual Network | `10.10.0.0/16` |
| Application Subnet | `10.10.1.0/24` |

## Terraform Concepts

This lab demonstrates:

- Input variables
- Local values
- Resource references
- Resource dependencies
- Output values
- Azure networking with Terraform

## Resource References

The Virtual Network references the Resource Group:

```hcl
resource_group_name = azurerm_resource_group.network.name
```

The subnet references the Virtual Network:

```hcl
virtual_network_name = azurerm_virtual_network.main.name
```

This creates relationships between Terraform-managed resources.

## Terraform Workflow

```bash
terraform fmt
terraform init
terraform validate
terraform plan
terraform apply
terraform output
terraform show
terraform destroy
```

## Key Learning

Terraform resources can reference attributes of other resources instead of repeating hard-coded values.

This allows Terraform to understand relationships between infrastructure components.
