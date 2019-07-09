locals {
  name_prefix = "${var.name_prefix != "" ? replace(var.name_prefix, "/[a-z0-9]$/", "$0-") : ""}"
  default_name = "${local.name_prefix}${var.client_name}-${var.location_short}-${var.environment}-vnet"

  default_tags = {
    env   = "${var.environment}"
    stack = "${var.stack}"
  }
}
