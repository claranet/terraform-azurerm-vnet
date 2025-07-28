output "resource" {
  description = "Virtual network resource object."
  value       = azurerm_virtual_network.main
}

output "id" {
  description = "Virtual network ID."
  value       = azurerm_virtual_network.main.id
}

output "location" {
  description = "Virtual network location."
  value       = azurerm_virtual_network.main.location
}

output "name" {
  description = "Virtual network name."
  value       = azurerm_virtual_network.main.name
}

output "address_space" {
  description = "Virtual network address space."
  value       = azurerm_virtual_network.main.address_space
}

output "network_watcher_flow_log_id" {
  description = "Network watcher flow log ID."
  value       = one(azurerm_network_watcher_flow_log.main[*].id)
}

output "network_watcher_flow_log_resource" {
  description = "Network watcher flow log resource object."
  value       = one(azurerm_network_watcher_flow_log.main[*])
}