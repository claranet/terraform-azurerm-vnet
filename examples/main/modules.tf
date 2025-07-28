data "azurerm_network_watcher" "network_watcher" {
  name                = "NetworkWatcher_${module.azure_region.location_cli}"
  resource_group_name = "NetworkWatcherRG"
}

module "azure_virtual_network" {
  source  = "claranet/vnet/azurerm"
  version = "x.x.x"

  environment    = var.environment
  location       = module.azure_region.location
  location_short = module.azure_region.location_short
  client_name    = var.client_name
  stack          = var.stack

  resource_group_name = module.rg.name

  cidrs       = ["10.10.0.0/16"]
  dns_servers = ["10.0.0.4", "10.0.0.5"] # Can be empty if not used

  flow_log_enabled         = true
  flow_log_logging_enabled = true

  network_watcher_name                = data.azurerm_network_watcher.network_watcher.name
  network_watcher_resource_group_name = data.azurerm_network_watcher.network_watcher.resource_group_name

  flow_log_retention_policy_enabled = true # default to true
  flow_log_retention_policy_days    = 91   # default to 91

  # Make sure to use a storage account with no existing lifecycle management rules
  # as this will adds a new rule and overwrites the existing one.
  # Fore more details, see https://github.com/hashicorp/terraform-provider-azurerm/issues/6935
  flow_log_storage_account_id                    = module.storage_account.id
  flow_log_traffic_analytics_enabled             = true # default to false
  flow_log_traffic_analytics_interval_in_minutes = 10   # default to 10

  log_analytics_workspace_guid     = module.logs.log_analytics_workspace_guid
  log_analytics_workspace_location = module.azure_region.location
  log_analytics_workspace_id       = module.logs.id

}
