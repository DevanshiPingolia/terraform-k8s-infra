resource "azurerm_dns_zone" "main" {
  name                = var.domain_name
  resource_group_name = var.resource_group_name
}

resource "azurerm_dns_a_record" "public" {
  name                = var.public_record_name
  zone_name           = azurerm_dns_zone.main.name
  resource_group_name = var.resource_group_name
  ttl                 = 300
  records             = [var.public_ip]
}

resource "azurerm_dns_a_record" "private" {
  name                = var.private_record_name
  zone_name           = azurerm_dns_zone.main.name
  resource_group_name = var.resource_group_name
  ttl                 = 300
  records             = [var.private_ip]
}