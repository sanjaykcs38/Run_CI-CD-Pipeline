
module "resource_group" {
  source = "../../Modules/azurerm_resource_group"
  rgs    = var.rgs
}
module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../../Modules/azurerm_Virtual_Network"
  vnets      = var.vnets
}
module "subnets" {
  depends_on = [module.virtual_network]
  source     = "../../Modules/azurerm_subnet"
  subnets    = var.subnets
}
module "public_ip" {
  depends_on = [module.resource_group]
  source     = "../../Modules/azurerm_public_ip"
  PIP        = var.PIP
}
module "virtual_machine" {
  depends_on = [module.subnets, module.public_ip]
  source     = "../../Modules/azurerm_virtual_machine_NIC"
  NICS_VM    = var.NICS_VM
}

