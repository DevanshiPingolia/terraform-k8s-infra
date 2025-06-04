output "dns_zone_name" {
  value = azurerm_dns_zone.main.name
}

output "public_record_fqdn" {
  value = azurerm_dns_a_record.public.fqdn
}

output "private_record_fqdn" {
  value = azurerm_dns_a_record.private.fqdn
}
