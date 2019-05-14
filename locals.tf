locals {
  default_name = "${var.client_name}-${var.location_short}-${var.environment}-vnet"

  default_tags = {
    env   = "${var.environment}"
    stack = "${var.stack}"
  }
}
