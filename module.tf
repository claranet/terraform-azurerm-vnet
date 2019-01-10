locals {
  default_tags = {
    env   = "${var.environment}"
    stack = "${var.stack}"
  }
}

resource "azurerm_virtual_network" "main_vnet" {
  name                = "${coalesce(var.custom_vnet_name, "vnet-${var.environment}-${var.location_short}-${var.client_name}")}"
  resource_group_name = "${var.resource_group_name}"
  address_space       = ["${var.vnet_cidr}"]
  location            = "${var.location}"

  tags = "${merge(local.default_tags, var.extra_tags)}"
}
