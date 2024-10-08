variable "cidrs" {
  description = "The address space that is used by the virtual network."
  type        = list(string)
}

variable "dns_servers" {
  description = "List of IP addresses of DNS servers."
  type        = list(string)
  default     = []
}
