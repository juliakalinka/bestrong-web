output "resource_group_name" {
  value = azurerm_resource_group.bestrong_rg.name
}

output "vnet_name" {
  value = module.network.vnet_name
}

output "app_service_name" {
  value = module.app_service.app_service_name
}

output "container_registry_name" {
  value = module.container_registry.acr_name
}

output "container_registry_login_server" {
  value = module.container_registry.acr_login_server
}