locals {
  # Naming locals/constants
  name_prefix = lower(var.name_prefix)
  name_suffix = lower(var.name_suffix)

  vnet_name = coalesce(var.custom_vnet_name, data.azurecaf_name.vnet.result)
}
