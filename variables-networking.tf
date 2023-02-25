variable "network_acls" {
  description = "Object with attributes: `bypass`, `default_action`, `ip_rules`, `virtual_network_subnet_ids`. Set to `null` to disable. See https://www.terraform.io/docs/providers/azurerm/r/key_vault.html#bypass for more information."
  type = object({
    bypass                     = optional(string, "None"),
    default_action             = optional(string, "Deny"),
    ip_rules                   = optional(list(string)),
    virtual_network_subnet_ids = optional(list(string)),
  })
  default = {}
}

variable "private_dns_zone_ids" {
  description = "Id of the private DNS Zone  to be used by the private endpoint"
  type        = string
  default     = ""
}

variable "subnet_id" {
  description = "Id for the subnet used by the private endpoint"
  type        = string
  default     = ""
}

variable "public_network_access_enabled" {
  description = "Whether the service is available from public network."
  type        = bool
  default     = false
}

variable "enable_private_endpoint" {
  description = "Wheter private endpoint is enabled or not"
  type        = bool
  default     = true
}