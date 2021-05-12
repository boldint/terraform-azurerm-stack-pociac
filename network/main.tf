/*
module "boldnaming" {
  source            = "git::ssh://bitbucket.org/boldint/terraform-azure-module-boldnaming.git?ref=1.0.0"
  entity            = var.entity
  unit              = var.unit
  projectappservice = var.projectappservice
  environment       = var.environment
  region            = var.location
}

module "network" {
  source = "git::ssh://bitbucket.org/boldint/terraform-azure-module-network.git?ref=1.0.1"

  boldnaming           = module.boldnaming.outputs
  resource_group_name  = module.rg.name
  address_space        = var.address_space
  default_custom_rules = var.default_custom_rules
  subnets              = var.subnets
}
*/

module "rg" {
  source   = "https://github.com/boldint/terraform-azurerm-module-rg.git?ref=master"
  name     = var.resource_group_name
  location = var.location
}
