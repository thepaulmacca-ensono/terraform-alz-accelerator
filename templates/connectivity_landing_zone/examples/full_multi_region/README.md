# Connectivity Landing Zone - Full Multi-Region Example

This example configuration deploys a full multi-region connectivity landing zone with:

- Hub Networking (with Hub and Spoke VNet or vWAN)
- Private DNS Zones for Private Link
- DDOS Protection Plan
- Azure Firewall

## Options

There are two options for deploying the hub networking:

- Hub and Spoke VNet: [hub_and_spoke_vnet.tfvars](./hub_and_spoke_vnet.tfvars)
- Virtual WAN: [virtual_wan.tfvars](./virtual_wan.tfvars)

## Documentation

The full documentation for this example can be found over at out [Azure Landing Zones documentation site](https://azure.github.io/Azure-Landing-Zones/accelerator/startermodules/terraform-platform-landing-zone/scenarios/).
