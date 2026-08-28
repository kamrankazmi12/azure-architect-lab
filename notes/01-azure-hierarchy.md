# Azure Hierarchy

## Overview

Azure resources are organized in a hierarchy.

Management Group
├── Subscription
│   ├── Resource Group
│   │   ├── Virtual Machine
│   │   ├── Storage Account
│   │   └── Virtual Network

## Components

### Management Group

Used to manage multiple Azure subscriptions.

### Subscription

Billing and management boundary.

### Resource Group

Container for Azure resources.

### Resources

Examples:

- Virtual Machines
- Storage Accounts
- Virtual Networks

## Example

Company:

- HR Department
- Finance Department
- IT Department

A Management Group can contain separate subscriptions for each department.

## Key Takeaway

Management Groups provide governance across subscriptions.
