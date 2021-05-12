output "rg_name" {
  description = "Resource Group name."
  value       = module.rg.name
}
/*
output "vnet_name" {
  description = "Virtual Network name."
  value       = module.network.vnet_name
}

output "vnet_id" {
  description = "Virtual Network name."
  value       = module.network.vnet_id
}

output "subnet_info" {
  description = "Map with information of all created subnets."
  value       = module.network.subnet_info
}
*/
