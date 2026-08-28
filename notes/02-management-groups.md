# Management Groups

## Purpose

Management Groups provide governance across multiple Azure subscriptions.

## Hierarchy

Management Group
├── Subscription
│   ├── Resource Group
│   │   ├── Virtual Machine
│   │   ├── Storage Account
│   │   └── Virtual Network

## Benefits

- Centralized governance
- Policy inheritance
- RBAC inheritance
- Compliance management

## Example

Company:

- HR
- Finance
- IT

Management Group
├── HR Subscription
├── Finance Subscription
└── IT Subscription

## Key Takeaway

Apply governance at the Management Group level rather than configuring each subscription individually.
``
