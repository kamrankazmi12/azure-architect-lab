# Resource Groups

## Purpose

A Resource Group is a logical container for Azure resources.

## Examples

Resources inside a Resource Group:

- Virtual Machines
- Storage Accounts
- Virtual Networks
- Key Vaults
- Azure SQL

## Best Practice

Group resources that share the same lifecycle.

## Example

Production Subscription
│
├── RG-Web
│   ├── VM
│   ├── Storage
│   └── Key Vault

## Key Takeaway

Resource Groups organize resources.

Subscriptions provide isolation.

Management Groups provide governance.
