# Import the restored VM
import {
  to = azurerm_virtual_machine.restored_vm
  id = "/subscriptions/76f95a94-1986-4de4-85b0-3ee26319b305/resourceGroups/cmaz-task-07-rg/providers/Microsoft.Compute/virtualMachines/task07-vm-restored"
}

# Import the restored NIC
import {
  to = azurerm_network_interface.restored_vm_nic
  id = "/subscriptions/76f95a94-1986-4de4-85b0-3ee26319b305/resourceGroups/cmaz-task-07-rg/providers/Microsoft.Network/networkInterfaces/task07-vm-nic"
}

# Import the restored Public IP
import {
  to = azurerm_public_ip.restored_vm_pip
  id = "/subscriptions/76f95a94-1986-4de4-85b0-3ee26319b305/resourceGroups/cmaz-task-07-rg/providers/Microsoft.Network/publicIPAddresses/task07-vm-pip"
}

# Import the restored Managed Disk
import {
  to = azurerm_managed_disk.restored_vm_disk
  id = "/subscriptions/76f95a94-1986-4de4-85b0-3ee26319b305/resourceGroups/cmaz-task-07-rg/providers/Microsoft.Compute/disks/task07vmrestored-osdisk-20250403-211109"
}