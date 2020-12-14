locals {
  name_prefix  = var.name_prefix != "" ? replace(var.name_prefix, "/[a-z0-9]$/", "$0-") : ""
  default_name = lower("${local.name_prefix}${var.client_name}-${var.location_short}-${var.environment}")

  vnet_name = coalesce(var.custom_vnet_name, "${local.default_name}-vnet")

  default_tags = {
    env   = var.environment
    stack = var.stack
  }
}
