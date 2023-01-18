output "service_bus_namespace_id" {
    value = azurerm_servicebus_namespace.service_bus_namespace
    description = "The Service Bus Namespace ID"
}

output "service_bus_namespace_identity" {
    value = azurerm_servicebus_namespace.service_bus_namespace
    description = "Service Bus Namespace identity block"
}