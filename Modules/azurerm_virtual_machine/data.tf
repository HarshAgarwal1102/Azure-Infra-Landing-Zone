data "azurerm_subnet" "subnetID" {
  for_each             = var.virtual_machines
  name                 = each.value.subnet_name
  resource_group_name  = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name
}

data "azurerm_public_ip" "pipID" {
  for_each            = var.virtual_machines
  name                = each.value.public_ip_name
  resource_group_name = each.value.resource_group_name
}