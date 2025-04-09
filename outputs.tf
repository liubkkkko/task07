output "vm_public_ip" {
  description = "Public IP of the virtual machine"
  value       = azurerm_public_ip.pip.ip_address
}

output "cdn_endpoint_url" {
  description = "URL of the CDN endpoint"
  value       = "https://${azurerm_cdn_endpoint.cdn_endpoint.fqdn}"
}

output "storage_blob_url" {
  description = "URL of the blob file in the storage container"
  value       = "https://${azurerm_storage_account.sa.name}.blob.core.windows.net/${azurerm_storage_container.container.name}/${azurerm_storage_blob.blob.name}"
}

output "vm_private_ip" {
  description = "Private IP of the virtual machine"
  value       = azurerm_network_interface.nic.private_ip_address
}
output "storage_account_key" {
  value       = azurerm_storage_account.sa.primary_access_key
  description = "The primary access key for the storage account"
  sensitive   = true
}