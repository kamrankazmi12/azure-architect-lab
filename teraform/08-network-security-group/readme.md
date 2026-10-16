# 08 - Azure Network Security Group

## Objective

Secure an Azure application subnet using a Network Security Group deployed with Terraform.

## Architecture

```text
Resource Group
│
├── Virtual Network
│     │
│     └── Application Subnet
│              │
│              └── NSG Association
│
└── Network Security Group
          │
          └── Allow HTTPS / TCP 443
```

## Network Design

| Resource | Configuration |
|---|---|
| VNet | `10.10.0.0/16` |
| App Subnet | `10.10.1.0/24` |
| NSG | Application subnet security |
| HTTPS | TCP 443 inbound |

## Terraform Resources

This lab uses:

- `azurerm_resource_group`
- `azurerm_virtual_network`
- `azurerm_subnet`
- `azurerm_network_security_group`
- `azurerm_network_security_rule`
- `azurerm_subnet_network_security_group_association`

## Resource Relationship

The NSG is attached to the application subnet using:

```hcl
resource "azurerm_subnet_network_security_group_association" "app" {
  subnet_id                 = azurerm_subnet.app.id
  network_security_group_id = azurerm_network_security_group.app.id
}
```

## Security Rule

This lab allows inbound HTTPS traffic:

```text
Protocol: TCP
Port: 443
Direction: Inbound
Action: Allow
```

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

Terraform resource references allow infrastructure components to be connected without hard-coding Azure resource IDs.

The subnet and Network Security Group are created separately and associated
