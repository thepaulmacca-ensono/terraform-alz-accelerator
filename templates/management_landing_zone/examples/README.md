# Management Landing Zone

This example configuration deploys a management landing zone with:

- Management group hierarchy according to the supplied architecture (default is [alz_custom](../lib/architecture_definitions/alz_custom.alz_architecture_definition.yaml))
- Azure policy assets (definitions, assignments, and initiatives) according to the supplied architecture and associated archetypes
- Custom role definitions
- Management resources, including log analytics workspace and optional automation account

## Options

There are two options for deploying the management landing zone:

- Management Resources Only: [management_minimal.tfvars](management_minimal.tfvars)
- Management Resources and Management Groups: [management.tfvars](management.tfvars)

>[!NOTE]
> If deploying Management Resources and Management Groups, ensure the `subscription_ids` variable is updated

## Documentation

The full documentation for this example can be found over at our [Azure Landing Zones documentation site](https://azure.github.io/Azure-Landing-Zones/accelerator/startermodules/terraform-platform-landing-zone/scenarios/management-only/).
