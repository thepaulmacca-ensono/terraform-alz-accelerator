variable "naming_module" {
  type        = string
  default     = "azure_caf"
  description = <<DESCRIPTION
The naming module to use for generating resource names.

Supported values:
- "azure_caf"               - Azure CAF module (default). Uses the Azure/naming/azurerm module.
- "stacks_foundation_azure" - Stacks Foundation Azure module. Uses the Ensono/stacks-foundation-azure module.

Defaults to 'azure_caf'.
DESCRIPTION
  validation {
    condition     = contains(["azure_caf", "stacks_foundation_azure"], var.naming_module)
    error_message = "naming_module must be 'azure_caf' or 'stacks_foundation_azure'."
  }
}

variable "company_name" {
  type        = string
  description = <<DESCRIPTION
The company name which is used in naming and tagging of resources.

This is truncated to the first 3 characters when used in resource names.
DESCRIPTION
}

variable "component_name" {
  type        = string
  default     = "man"
  description = <<DESCRIPTION
The name used in resource naming to identify the component. Must be 3 characters in length.

Defaults to 'man'.
DESCRIPTION
  validation {
    condition     = length(var.component_name) == 3
    error_message = "component_name must be 3 characters in length."
  }
}
