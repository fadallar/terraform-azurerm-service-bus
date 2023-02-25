output "namespace_id" {
  value       = azurerm_servicebus_namespace.service_bus_namespace.id
  description = "The Service Bus Namespace ID"
}

output "namespace_identity" {
  value       = azurerm_servicebus_namespace.service_bus_namespace.identity
  description = "Service Bus Namespace identity block"
}

output "id_sb_data_owner" {
  value        = azurerm_user_assigned_identity.sb_data_owner.id
  description = "Id to the user-managed identity with Service Bus Data Owner Role"
}