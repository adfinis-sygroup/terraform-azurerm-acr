resource "azurerm_container_registry" "main" {
  count = "${length(var.acr_georeplication_locations) == 0 ? 1 : 0}"

  name                = "${var.acr_name}"
  resource_group_name = "${var.acr_resource_group_name}"

  location           = "${var.acr_location}"
  admin_enabled      = "${var.acr_admin_enabled}"
  sku                = "${var.acr_sku}"
  storage_account_id = "${var.acr_storage_account_id}"
  tags               = "${var.acr_tags}"
}

resource "azurerm_container_registry" "georeplication" {
  count = "${length(var.acr_georeplication_locations) == 0 ? 0 : 1}"

  name                     = "${var.acr_name}"
  resource_group_name      = "${var.acr_resource_group_name}"
  location                 = "${var.acr_location}"
  admin_enabled            = "${var.acr_admin_enabled}"
  sku                      = "${var.acr_sku}"
  storage_account_id       = "${var.acr_storage_account_id}"
  tags                     = "${var.acr_tags}"
  georeplication_locations = "${var.acr_georeplication_locations}"
}
