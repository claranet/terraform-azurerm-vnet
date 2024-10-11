resource "azurerm_virtual_network" "main" {
  name                = local.name
  resource_group_name = var.resource_group_name
  address_space       = var.cidrs
  location            = var.location

  dns_servers = var.dns_servers

  tags = merge(local.default_tags, var.extra_tags)
}

moved {
  from = azurerm_virtual_network.main_vnet
  to   = azurerm_virtual_network.main
}
