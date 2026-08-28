# Company Architecture Case 01

## Scenario

A company has:

- 3 departments
  - HR
  - Finance
  - IT

- 1 Azure tenant
- 3 Azure subscriptions

## Design

Management Group
├── HR Subscription
├── Finance Subscription
└── IT Subscription

## Governance

- Apply Azure Policy at Management Group level
- Use RBAC for department access
- Enable Azure Monitor
- Centralize logs in Log Analytics

## Why?

Provides centralized governance while allowing each department to manage its own resources.
