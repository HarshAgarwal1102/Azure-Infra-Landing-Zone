module "resource_group" {
  source = "../../Modules/azurerm_resource_group"
  rgs    = var.rgs
}

module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../../Modules/azurerm_virtual_network"
  vnets      = var.vnets
}

module "subnets" {
  depends_on = [module.virtual_network]
  source     = "../../Modules/azurerm_subnets"
  subnets    = var.subnets
}

module "public_ip" {
  depends_on = [module.resource_group]
  source     = "../../Modules/azurerm_public_ip"
  public_ips = var.public_ips
}

module "virtual_machine" {
  depends_on       = [module.subnets, module.public_ip]
  source           = "../../Modules/azurerm_virtual_machine"
  virtual_machines = var.virtual_machines
}