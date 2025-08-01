# Generic naming variables
variable "name_prefix" {
  description = "Optional prefix for the generated name."
  type        = string
  default     = ""
}

variable "name_suffix" {
  description = "Optional suffix for the generated name."
  type        = string
  default     = ""
}

# Custom naming override
variable "custom_name" {
  description = "Optional custom virtual network name."
  type        = string
  default     = ""
}

variable "custom_network_watcher_flow_log_name" {
  description = "Network watcher flow log name."
  type        = string
  default     = null
}
