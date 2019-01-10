resource "azurerm_virtual_network" "main_vnet" {
  name                = "${coalesce(var.custom_vnet_name, "vnet.${var.environment}.${var.client_name}.${var.stack}")}"
  resource_group_name = "${var.rg_name}"
  address_space       = "${var.vnet_cidr}"
  location            = "${var.location}"

  tags {
    environment = "${var.environment}"
  }
}
