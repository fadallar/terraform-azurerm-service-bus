output "namespace_id" {
  value       = azurerm_servicebus_namespace.service_bus_namespace.id
  description = "The Service Bus Namespace ID"
}

output "namespace_identity" {
  value       = azurerm_servicebus_namespace.service_bus_namespace.identity
  description = "Service Bus Namespace identity block"
}

output "namespace_name" {
  value       = azurerm_servicebus_namespace.service_bus_namespace.name
  description = "Service Bus Namespace name"
}

output "namespace_endpoint" {
  value       = azurerm_servicebus_namespace.service_bus_namespace.endpoint
  description = "Service Bus Namespace endpoint"
}

## User assigned identity

output "id_sb_data_owner" {
  value       = azurerm_user_assigned_identity.sb_data_owner.id
  description = "Id to the user-managed identity with Service Bus Data Owner Role"
}

output "clientid_sb_data_owner" {
  value       = azurerm_user_assigned_identity.sb_data_owner.client_id
  description = "Client Id to the user-managed identity with Service Bus Data Owner Role"
}

output "principalid_sb_data_owner" {
  value       = azurerm_user_assigned_identity.sb_data_owner.principal_id
  description = "Principal Id to the user-managed identity with Service Bus Data Owner Role"
}

output "tenantid_sb_data_owner" {
  value       = azurerm_user_assigned_identity.sb_data_owner.tenant_id
  description = "Tenant Id to the user-managed identity with Service Bus Data Owner Role"
}