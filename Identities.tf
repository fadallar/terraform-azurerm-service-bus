// SB Data Owner Role 
resource "azurerm_user_assigned_identity" "sb_data_owner" {
  location            = var.location
  name                = format("id-sbdataowner-%s", azurerm_servicebus_namespace.service_bus_namespace.name)
  resource_group_name = var.resource_group_name
  tags                = var.default_tags
}

resource "azurerm_role_assignment" "rbac_sb_data_owner" {
  scope                = azurerm_servicebus_namespace.service_bus_namespace.id
  role_definition_name = "Azure Service Bus Data Owner"
  principal_id         = azurerm_user_assigned_identity.sb_data_owner.principal_id
}