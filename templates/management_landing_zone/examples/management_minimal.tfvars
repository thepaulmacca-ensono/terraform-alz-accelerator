/*
--- Built-in Replacements ---
This file contains built-in replacements to avoid repeating the same hard-coded values.
Replacements are denoted by the dollar-dollar curly braces token (e.g. $${starter_location_01}). The following details each built-in replacements that you can use:
`starter_location_01`: This the primary Azure location sourced from the `starter_locations` variable. This can be used to set the location of resources.
*/

/*
--- Starter Locations ---
You can define the Azure region to use throughout the configuration.
*/
starter_locations = ["uksouth"]

/*
--- Company Name ---
This variable is used by the naming modules to generate resource names.
The name is truncated to the first 3 characters by default in the modules.
This is due to the Ensono client "tricode" which is a 3 letter code assigned to managed clients in ServiceNow. This is normally decided by the onboarding team for new clients.
*/
company_name = "ensono"

/*
--- Tags ---
This variable can be used to apply tags to all resources that support it. Some resources allow overriding these tags.
*/
tags = {
  deployed_by = "terraform"
  source      = "Azure Landing Zones Management Module"
}

/*
--- Management Resources ---
You can use this section to customize the management resources that will be deployed.
*/
management_resource_settings = {
  location = "$${starter_location_01}"
}
