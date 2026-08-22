
data "azurerm_subnet" "subnet110" {
  for_each             = var.NICS_VM
  name                 = each.value.subnet_name
  virtual_network_name = each.value.Vnet_name
  resource_group_name  = each.value.resource_group_name
}
data "azurerm_public_ip" "public_IP" {
  for_each            = var.NICS_VM
  name                = each.value.PublicIP_name
  resource_group_name = each.value.resource_group_name
}