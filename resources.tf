resource "azurerm_servicebus_namespace" "service_bus_namespace" {
    name                = local.name
    location            = var.location
    resource_group_name = var.resource_group_name
    sku                 = var.sku
    local_auth_enabled = false
    public_network_access_enabled = var.public_network_access_enabled
    minimum_tls_version = 1.2
    zone_redundant = var.zone_redundant
    capacity = var.capacity

    tags = merge(var.default_tags,var.extra_tags)
    
#    dynamic identity {
#        type = var.identity_type
#        identity_ids = []   ### need to develop that one
#
#    }
// Not foreseen to use customer_managed_key
#   dynamic customer_managed_key {
#        key_vault_key_id =
#        identity_id =
#        infrastructure_encryption_enabled =
#    }
  
}
// Topics and Subscriptions will be developped later
#resource "azurerm_servicebus_topic" "service_bus_topic" {
#    name         = var.service_bus_topic
#    namespace_id = azurerm_servicebus_namespace.service_bus_namespace.id
#    enable_partitioning = var.enable_partitioning
#    status  =
#    auto_delete_on_idle =
#    default_message_ttl =
#    duplicate_detection_history_time_window =
#    enable_batched_operations =
#    enable_express =
#    max_message_size_in_kilobytes =
#    max_size_in_megabytes =
#    requires_duplicate_detection =
#    support_ordering =
#}
#
#resource "azurerm_servicebus_subscription" "service_bus_subscription" {
#  name               = "#####"
#  topic_id           = azurerm_servicebus_topic" "service_bus_topic.id
#  max_delivery_count = 1
#}

