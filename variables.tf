
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

variable "tenant_id" {
  description = "The Azure Active Directory tenant ID that should be used for authenticating requests to the ####. Default is the current one."
  type        = string
  default     = ""
}

variable "zone_redundant" {
  description = "Whether or not this resource is zone redundant. sku needs to be Premium"
  type = bool
  default = true

}

variable "capacity" {
  description ="Specifies the capacity. When sku is Premium, capacity can be 1, 2, 4, 8 or 16. When sku is Basic or Standard, capacity can be 0 only."
  type = number
  default = 0
}