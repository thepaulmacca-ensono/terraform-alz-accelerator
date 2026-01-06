# Azure Landing Zones Accelerator Starter Module for Terraform - Azure Verified Modules Management

This module is part of the Azure Landing Zones Accelerator solution. It is a complete implementation of the Azure Landing Zones Management Landing Zone for Terraform.

The module deploys the following resources:

- Management group hierarchy
- Azure Policy definitions and assignments
- Role definitions
- Management resources, including Log Analytics workspace and Automation account

## Usage

The module is intended to be used with the [Azure Landing Zones Accelerator](https://aka.ms/alz/acc). Head over there to get started.

>[!NOTE]
> The module can be used independently if needed. An example `tfvars` file can be found in the [examples](./examples/) directory for that use case.

### Running Directly

#### Run the local examples

Create a `terraform.tfvars` file in the root of the module directory with the following content, replacing the placeholders with the actual values:

```hcl
subscription_ids  = {
  "management"    = "00000000-0000-0000-0000-000000000000",
  "connectivity"  = "00000000-0000-0000-0000-000000000000",
  "identity"      = "00000000-0000-0000-0000-000000000000",
}
```

```powershell
terraform init
terraform apply -var-file ./examples/management.tfvars
```
