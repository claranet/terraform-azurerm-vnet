variable "location" {
  description = "Azure region to use"
}

variable "client_name" {
  description = "Client name/account used in naming"
}

variable "custom_vnet_name" {
  description = "Optional custom virtual network name"
  default     = ""
}

variable "environment" {
  description = "Project environment"
}

variable "stack" {
  description = "Project stack name"
}

variable "rg_name" {
  description = "Resource group name"
}

variable "vnet_cidr" {
  type        = "list"
  description = "The address space that is used by the virtual network"
}
