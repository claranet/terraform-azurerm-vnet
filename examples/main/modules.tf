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
}
