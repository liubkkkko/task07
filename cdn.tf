resource "azurerm_cdn_profile" "cdn_profile" {
  name                = var.cdn_profile_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "Standard_Microsoft"
  depends_on          = [azurerm_resource_group.rg]
  tags = {
    Creator = var.creator_tag
  }
}

resource "azurerm_cdn_endpoint" "cdn_endpoint" {
  name                = var.cdn_endpoint_name
  location            = var.location
  profile_name        = azurerm_cdn_profile.cdn_profile.name
  resource_group_name = var.resource_group_name
  origin_host_header  = azurerm_storage_account.sa.primary_blob_host
  origin {
    name       = "storageorigin"
    host_name  = azurerm_storage_account.sa.primary_blob_host
    http_port  = 80
    https_port = 443
  }
  depends_on = [azurerm_resource_group.rg]
  tags = {
    Creator = var.creator_tag
  }
}