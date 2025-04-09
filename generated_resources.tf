# # __generated__ by Terraform
# # Please review these resources and move them into your main configuration files.

# # __generated__ by Terraform from "/subscriptions/76f95a94-1986-4de4-85b0-3ee26319b305/resourceGroups/cmaz-task-07-rg/providers/Microsoft.Network/publicIPAddresses/task07-vm-pip"
# resource "azurerm_public_ip" "restored_vm_pip" {
#   allocation_method       = "Static"
#   ddos_protection_mode    = "VirtualNetworkInherited"
#   ddos_protection_plan_id = null
#   domain_name_label       = null
#   edge_zone               = null
#   idle_timeout_in_minutes = 4
#   ip_tags                 = {}
#   ip_version              = "IPv4"
#   location                = "eastus"
#   name                    = "task07-vm-pip"
#   public_ip_prefix_id     = null
#   resource_group_name     = "cmaz-task-07-rg"
#   reverse_fqdn            = null
#   sku                     = "Basic"
#   sku_tier                = "Regional"
#   tags = {
#     Creator = "liubomyr_puliak@epam.com"
#   }
#   zones = []
# }

# # __generated__ by Terraform from "/subscriptions/76f95a94-1986-4de4-85b0-3ee26319b305/resourceGroups/cmaz-task-07-rg/providers/Microsoft.Network/networkInterfaces/task07-vm-nic"
# resource "azurerm_network_interface" "restored_vm_nic" {
#   accelerated_networking_enabled = false
#   auxiliary_mode                 = null
#   auxiliary_sku                  = null
#   dns_servers                    = []
#   edge_zone                      = null
#   internal_dns_name_label        = null
#   ip_forwarding_enabled          = false
#   location                       = "eastus"
#   name                           = "task07-vm-nic"
#   resource_group_name            = "cmaz-task-07-rg"
#   tags = {
#     Creator = "liubomyr_puliak@epam.com"
#   }
#   ip_configuration {
#     gateway_load_balancer_frontend_ip_configuration_id = null
#     name                                               = "internal"
#     primary                                            = true
#     private_ip_address                                 = "10.0.1.4"
#     private_ip_address_allocation                      = "Dynamic"
#     private_ip_address_version                         = "IPv4"
#     public_ip_address_id                               = "/subscriptions/76f95a94-1986-4de4-85b0-3ee26319b305/resourceGroups/cmaz-task-07-rg/providers/Microsoft.Network/publicIPAddresses/task07-vm-pip"
#     subnet_id                                          = "/subscriptions/76f95a94-1986-4de4-85b0-3ee26319b305/resourceGroups/cmaz-task-07-rg/providers/Microsoft.Network/virtualNetworks/task07-vm-vnet/subnets/frontend"
#   }
# }

# # __generated__ by Terraform
# resource "azurerm_managed_disk" "restored_vm_disk" {
#   create_option                     = "Restore"
#   disk_access_id                    = null
#   disk_encryption_set_id            = null
#   disk_iops_read_write              = 500
#   disk_mbps_read_write              = 60
#   disk_size_gb                      = 30
#   edge_zone                         = null
#   gallery_image_reference_id        = null
#   hyper_v_generation                = "V2"
#   image_reference_id                = null
#   location                          = "eastus"
#   logical_sector_size               = null
#   name                              = "task07vmrestored-osdisk-20250403-211109"
#   network_access_policy             = null
#   on_demand_bursting_enabled        = false
#   optimized_frequent_attach_enabled = false
#   os_type                           = "Linux"
#   performance_plus_enabled          = false
#   public_network_access_enabled     = true
#   resource_group_name               = "cmaz-task-07-rg"
#   secure_vm_disk_encryption_set_id  = null
#   security_type                     = null
#   source_resource_id                = "/subscriptions/76f95a94-1986-4de4-85b0-3ee26319b305/resourceGroups/AzureBackupRG_eastus_1/providers/Microsoft.Compute/restorePointCollections/AzureBackup_task07-vm_545359511612843/restorePoints/AzureBackup_20250403_084023/disks/task07-vm_OsDisk_1_cf787123b692443c9ebd69afa9267a22?id=92c49d01-cb00-4773-b120-f6a0408b2938"
#   source_uri                        = null
#   storage_account_id                = null
#   storage_account_type              = "Standard_LRS"
#   tags = {
#     Creator       = "liubomyr_puliak@epam.com"
#     RSVaultBackup = "57ecc7bc-dec0-4378-bfb8-32a1c95604d3"
#   }
#   tier                   = null
#   trusted_launch_enabled = false
#   zone                   = null
# }

# # __generated__ by Terraform from "/subscriptions/76f95a94-1986-4de4-85b0-3ee26319b305/resourceGroups/cmaz-task-07-rg/providers/Microsoft.Compute/virtualMachines/task07-vm-restored"
# resource "azurerm_virtual_machine" "restored_vm" {
#   availability_set_id              = null
#   delete_data_disks_on_termination = null
#   delete_os_disk_on_termination    = null
#   license_type                     = null
#   location                         = "eastus"
#   name                             = "task07-vm-restored"
#   network_interface_ids            = ["/subscriptions/76f95a94-1986-4de4-85b0-3ee26319b305/resourceGroups/cmaz-task-07-rg/providers/Microsoft.Network/networkInterfaces/task07-vm-restored-nic-d1bec26ee69344b79aead00dc851adf4"]
#   primary_network_interface_id     = "/subscriptions/76f95a94-1986-4de4-85b0-3ee26319b305/resourceGroups/cmaz-task-07-rg/providers/Microsoft.Network/networkInterfaces/task07-vm-restored-nic-d1bec26ee69344b79aead00dc851adf4"
#   proximity_placement_group_id     = null
#   resource_group_name              = "cmaz-task-07-rg"
#   tags = {
#     Creator = "liubomyr_puliak@epam.com"
#   }
#   vm_size = "Standard_B2s"
#   zones   = []
#   storage_os_disk {
#     caching                   = "ReadWrite"
#     create_option             = "Attach"
#     disk_size_gb              = 30
#     image_uri                 = null
#     managed_disk_id           = "/subscriptions/76f95a94-1986-4de4-85b0-3ee26319b305/resourceGroups/cmaz-task-07-rg/providers/Microsoft.Compute/disks/task07vmrestored-osdisk-20250403-211109"
#     managed_disk_type         = "Standard_LRS"
#     name                      = "task07vmrestored-osdisk-20250403-211109"
#     os_type                   = "Linux"
#     vhd_uri                   = null
#     write_accelerator_enabled = false
#   }
# }
