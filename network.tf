# Need to Work on that part 
#resource "azurerm_servicebus_namespace_network_rule_set" "example" {
#  count = var.public_network_access_enabled == true ? 1 : 0
#  namespace_id = azurerm_servicebus_namespace.example.id
#  default_action                = "Deny"
#  public_network_access_enabled = true
#
#  network_rules {
#    subnet_id                            = azurerm_subnet.example.id
#    ignore_missing_vnet_service_endpoint = false
#  }
#
#  ip_rules = [""]
#}

resource "azurerm_private_endpoint" "servicebuspep" {
  count               = var.enable_private_endpoint == true ? 1 : 0
  name                = format("pe-%s", local.name)
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = var.subnet_id
  tags                = merge(var.default_tags, var.extra_tags)

  private_dns_zone_group {
    name                 = "servicebus-group"
    private_dns_zone_ids = [var.private_dns_zone_ids]
  }
  private_service_connection {
    name                           = "servicebusprivatelink"
    is_manual_connection           = false
    private_connection_resource_id = azurerm_servicebus_namespace.service_bus_namespace.id
    subresource_names              = ["namespace"]
  }
}