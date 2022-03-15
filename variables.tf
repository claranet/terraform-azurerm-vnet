variable "location" {
  description = "Azure region to use"
  type        = string
}

variable "location_short" {
  description = "Short string for Azure location."
  type        = string
}

variable "client_name" {
  description = "Client name/account used in naming"
  type        = string
}

variable "environment" {
  description = "Project environment"
  type        = string
}

variable "stack" {
  description = "Project stack name"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "vnet_cidr" {
  description = "The address space that is used by the virtual network"
  type        = list(string)
}

variable "dns_servers" {
  description = "List of IP addresses of DNS servers"
  type        = list(string)
  default     = []
}
