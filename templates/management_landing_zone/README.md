# Azure Landing Zones Starter Module - Management

This module is part of the Azure Landing Zones solution. It is a complete implementation of a Management Landing Zone using Azure Verified Modules.

## Features

### Management Resources

- Deployment of Log Analytics Workspace.
- Optional deployment of Azure Automation Account.
- Deployment of Azure Resource Group.
- Customizable Log Analytics Solutions.
- Optional deployment of Data Collection Rules.
- Optional deployment of User Assigned Managed Identity.

### Management Groups

- Optional deployment of Management Groups according to the supplied architecture (default is [alz_custom](./lib/architecture_definitions/alz_custom.alz_architecture_definition.yaml))
- Optional deployment of Azure Policy assets (definitions, assignments, and initiatives) according to the supplied architecture and associated archetypes
- Optional modification of policy assignments:
  - Enforcement mode
  - Identity
  - Non-compliance messages
  - Overrides
  - Parameters
  - Resource selectors
- Optional creation of the required role assignments for Azure Policy, including support for the **assign permissions** metadata tag, just like the Azure Portal
- Optional deployment of custom role definitions

## Usage

The module is intended to be used with the [Azure Landing Zones Accelerator](https://aka.ms/alz/acc). Head over there to get started.

>[!NOTE]
> The module can be used independently if needed. Example `tfvars` files can be found in the [examples](./examples/) directory for that use case.

### Running Directly

#### Run the local examples

##### Management Resources Only

Create a `terraform.tfvars` file in the root of the module directory with the following content, replacing the placeholder with the actual values:

```hcl
subscription_ids  = {
  "management"    = "00000000-0000-0000-0000-000000000000",
}
```

```text
terraform init
terraform apply -var-file ./examples/management_minimal.tfvars
```

##### Management Groups

Create a `terraform.tfvars` file in the root of the module directory with the following content, replacing the placeholder with the actual values:

```hcl
subscription_ids  = {
  "connectivity"  = "00000000-0000-0000-0000-000000000000",
  "identity"      = "00000000-0000-0000-0000-000000000000",
  "management"    = "00000000-0000-0000-0000-000000000000"
}
```

```text
terraform init
terraform apply -var-file ./examples/management.tfvars
```
