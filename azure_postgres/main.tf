resource "azurerm_postgresql_server" "main" {
  name                   = "${var.name_prefix}-psql"
  location               = var.location
  resource_group_name    = var.resource_group_name
  administrator_login    = var.db_admin_username
  administrator_password = var.db_admin_password
  version                = "13"
  sku_name               = var.sku_name

  storage_mb             = var.storage_mb
  zone                   = var.availability_zone

  delegated_subnet_id    = var.subnet_id
  private_dns_zone_id    = var.private_dns_zone_id
}