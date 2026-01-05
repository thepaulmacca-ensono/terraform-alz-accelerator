# Azure Landing Zones Accelerator Starter Module for Terraform - Azure Verified Modules Connectivity

This module is part of the Azure Landing Zones Accelerator solution. It is a complete implementation of the Azure Landing Zones Connectivity Landing Zone for Terraform.

The module deploys the following resources:

- Hub Networking (with Hub and Spoke VNet or vWAN)
- Private DNS Zones for Private Link
- DDOS Protection Plan
- Azure Firewall

## Usage

The module is intended to be used with the [Azure Landing Zones Accelerator](https://aka.ms/alz/acc). Head over there to get started.

>[!NOTE]
> The module can be used independently if needed. An example `tfvars` file can be found in the [examples](./examples/) directory for that use case.

### Running Directly

#### Run the local examples

Create a `terraform.tfvars` file in the root of the module directory with the following content, replacing the placeholders with the actual values:

```hcl
starter_locations = ["uksouth", "ukwest"]
subscription_ids  = {
  "connectivity"  = "00000000-0000-0000-0000-000000000000"
}
```

```powershell
terraform init
terraform apply -var-file ./examples/full_multi_region/hub_and_spoke_vnet.tfvars
```
