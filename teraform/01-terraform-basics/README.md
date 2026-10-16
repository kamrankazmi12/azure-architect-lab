# 01 - Terraform Basics

## Objective

Understand the basic Terraform workflow before deploying Azure infrastructure.

## Core Workflow

Write
↓
Init
↓
Validate
↓
Plan
↓
Apply
↓
Destroy

## Commands

### Initialize

`terraform init`

Initializes the working directory and downloads required providers.

### Format

`terraform fmt`

Formats Terraform configuration files.

### Validate

`terraform validate`

Checks whether the Terraform configuration is syntactically valid.

### Plan

`terraform plan`

Shows the infrastructure changes Terraform intends to make.

### Apply

`terraform apply`

Applies the proposed infrastructure changes.

### Destroy

`terraform destroy`

Removes infrastructure managed by the configuration.

## Key Learning

Terraform uses declarative Infrastructure as Code.

I define the desired infrastructure state and Terraform determines the actions required to reach that state.
