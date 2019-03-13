output "acr_id" {
  description = "The Container Registry ID."
  value       = "${element(split(",", azurerm_container_registry.main.count == 1 ? join(",", azurerm_container_registry.main.*.id) : join(",", azurerm_container_registry.georeplication.*.id)), 0)}"
}

output "acr_login_server" {
  description = "The URL that can be used to log into the container registry."
  value       = "${element(split(",", azurerm_container_registry.main.count == 1 ? join(",", azurerm_container_registry.main.*.login_server) : join(",", azurerm_container_registry.georeplication.*.login_server)), 0)}"
}

output "acr_admin_username" {
  description = "The Username associated with the Container Registry Admin account - if the admin account is enabled."
  value       = "${element(split(",", azurerm_container_registry.main.count == 1 ? join(",", azurerm_container_registry.main.*.admin_username) : join(",", azurerm_container_registry.georeplication.*.admin_username)), 0)}"
}

output "acr_admin_password" {
  description = "The Password associated with the Container Registry Admin account - if the admin account is enabled."
  value       = "${element(split(",", azurerm_container_registry.main.count == 1 ? join(",", azurerm_container_registry.main.*.admin_password) : join(",", azurerm_container_registry.georeplication.*.admin_password)), 0)}"
}
