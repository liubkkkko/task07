terraform {
  backend "azurerm" {
    resource_group_name  = "cmaz-13f58f43-mod4-rg"    # Resource Group from Task 4
    storage_account_name = "task04backendsa"          # Storage Account from Task 4
    container_name       = "terraform-state"          # Blob Container from Task 4
    key                  = "task07/terraform.tfstate" # Path to the state file in the blob
  }
}