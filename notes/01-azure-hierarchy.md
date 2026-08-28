# Azure Hierarchy

## Azure Structure

Management Group
├── Subscription
│   ├── Resource Group
│   │   ├── Virtual Machine
│   │   ├── Storage Account
│   │   └── Virtual Network

## Key Learning

Small environments can use Resource Groups for separation.

Large enterprises often use separate Subscriptions for:
- Billing
- Security
- Governance
- Compliance

Management Groups allow policies to be applied across multiple subscriptions.
