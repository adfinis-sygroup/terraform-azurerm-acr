terraform {}

resource "azurerm_resource_group" "main" {
  name     = "rg-acr-test"
  location = "westeurope"
}

module "acr" {
  # source  = "adfinis-forks/acr/azurerm"
  # version = "0.0.0"
  source = "../../"

  acr_name                = "acrgeoreplicated"
  acr_resource_group_name = "${azurerm_resource_group.main.name}"
  acr_location            = "${azurerm_resource_group.main.location}"
  acr_sku                 = "Premium"
  acr_admin_enabled       = true

  acr_georeplication_locations = [
    "westus",
  ]
}

output "acr_id" {
  value = "${module.acr.acr_id}"
}

output "acr_login_server" {
  value = "${module.acr.acr_login_server}"
}

output "acr_admin_username" {
  value = "${module.acr.acr_admin_username}"
}

output "acr_admin_password" {
  value = "${module.acr.acr_admin_password}"
}
