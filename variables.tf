
variable "environment" {
  description = "Environment name"
  type        = string
}

variable "stack" {
  description = "Stack name"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group the resources will belong to"
  type        = string
}

variable "location" {
  description = "Azure location for Key Vault."
  type        = string
}

variable "location_short" {
  description = "Short string for Azure location."
  type        = string
}

variable "zone_redundant" {
  description = "Whether or not this resource is zone redundant. sku needs to be Premium"
  type        = bool
  default     = true

}

variable "local_auth_enabled" {
  description = "Whether or not SAS authentication is enabled for the Service Bus namespace."
  type        = bool
  default     = false
}

variable "capacity" {
  description = "Specifies the capacity. When sku is Premium, capacity can be 1, 2, 4, 8 or 16. When sku is Basic or Standard, capacity can be 0 only."
  type        = number
  default     = 1
}

variable "minimum_tls_version" {
  description = "The minimum supported TLS version for this Service Bus Namespace."
  type        = string
  default     = 1.2
}

variable "sku" {
  description = "Defines which tier to use. Options are Basic, Standard or Premium"
  type        = string
  default     = "Premium"
}

variable "identity_ids" {
  type        = list(string)
  description = "List of user assigned identity IDs"
  default     = null
}