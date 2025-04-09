resource "azurerm_recovery_services_vault" "rsv" {
  name                = var.rsv_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  sku                 = "Standard"

  tags = {
    Creator = var.creator_tag
  }
}
resource "azurerm_backup_policy_vm" "backup_policy" {
  name                = var.backup_policy_name
  resource_group_name = azurerm_resource_group.rg.name
  recovery_vault_name = azurerm_recovery_services_vault.rsv.name

  backup {
    frequency = "Daily"
    time      = "23:00"
  }

  retention_daily {
    count = 7
  }
}
resource "azurerm_backup_protected_vm" "protected_vm" {
  resource_group_name = azurerm_resource_group.rg.name
  recovery_vault_name = azurerm_recovery_services_vault.rsv.name
  source_vm_id        = azurerm_linux_virtual_machine.vm.id
  backup_policy_id    = azurerm_backup_policy_vm.backup_policy.id
}