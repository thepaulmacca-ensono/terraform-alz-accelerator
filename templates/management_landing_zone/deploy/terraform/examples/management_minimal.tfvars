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
--- Custom Replacements ---
You can define custom replacements to use throughout the configuration.
*/
custom_replacements = {
  /*
  --- Custom Name Replacements ---
  You can define custom names and other strings to use throughout the configuration.
  You can only use the built in replacements in this section.
  NOTE: You cannot refer to another custom name in this variable.
  */
  names = {
    # Resource names
    ama_user_assigned_managed_identity_name = "uai-ama"
    dcr_change_tracking_name                = "dcr-change-tracking"
    dcr_vm_insights_name                    = "dcr-vm-insights"
  }

  /*
  --- Custom Resource Group Identifier Replacements ---
  You can define custom resource group identifiers to use throughout the configuration.
  You can only use the templated variables and custom names in this section.
  NOTE: You cannot refer to another custom resource group identifier in this variable.
  */
  resource_group_identifiers = {
    management_resource_group_id = "/subscriptions/$${subscription_id_management}/resourcegroups/$${management_resource_group_name}"
  }

  /*
  --- Custom Resource Identifier Replacements ---
  You can define custom resource identifiers to use throughout the configuration.
  You can only use the templated variables, custom names and customer resource group identifiers in this variable.
  NOTE: You cannot refer to another custom resource identifier in this variable.
  */
  resource_identifiers = {
    ama_change_tracking_data_collection_rule_id = "$${management_resource_group_id}/providers/Microsoft.Insights/dataCollectionRules/$${dcr_change_tracking_name}"
    ama_user_assigned_managed_identity_id       = "$${management_resource_group_id}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/$${ama_user_assigned_managed_identity_name}"
    ama_vm_insights_data_collection_rule_id     = "$${management_resource_group_id}/providers/Microsoft.Insights/dataCollectionRules/$${dcr_vm_insights_name}"
    log_analytics_workspace_id                  = "$${management_resource_group_id}/providers/Microsoft.OperationalInsights/workspaces/$${log_analytics_workspace_name}"
  }
}

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
  user_assigned_managed_identities = {
    ama = {
      name = "$${ama_user_assigned_managed_identity_name}"
    }
  }
  data_collection_rules = {
    change_tracking = {
      name = "$${dcr_change_tracking_name}"
    }
    vm_insights = {
      name = "$${dcr_vm_insights_name}"
    }
  }
}
