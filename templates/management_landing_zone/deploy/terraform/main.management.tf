module "management_resources" {
  count = var.management_resources_enabled ? 1 : 0

  source = "./modules/management_resources"

  enable_telemetry             = var.enable_telemetry
  management_resource_settings = local.management_resource_settings
}

module "management_groups" {
  count = var.management_groups_enabled ? 1 : 0

  source = "./modules/management_groups"

  enable_telemetry          = var.enable_telemetry
  management_group_settings = local.management_group_settings
}
