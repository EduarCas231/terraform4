output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}

output "subnet_ids" {
  value = { for k, v in azurerm_subnet.subnets : k => v.id }
}

output "storage_account_name" {
  value = azurerm_storage_account.storage.name
}

output "storage_blob_endpoint" {
  value = azurerm_storage_account.storage.primary_blob_endpoint
}

output "postgres_fqdn" {
  value     = azurerm_postgresql_flexible_server.postgres.fqdn
  sensitive = false
}

output "vm_public_ip" {
  value = azurerm_public_ip.vm_pip.ip_address
}

output "app_service_url" {
  value = "https://${azurerm_linux_web_app.app.default_hostname}"
}

output "blob_private_ip" {
  value = azurerm_private_endpoint.blob_pe.private_service_connection[0].private_ip_address
}

output "postgres_private_ip" {
  value = azurerm_private_endpoint.postgres_pe.private_service_connection[0].private_ip_address
}
