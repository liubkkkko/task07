variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure region where resources will be deployed"
  type        = string
}

variable "account_tier" {
  description = "The performance tier of the storage account"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "The replication type of the storage account"
  type        = string
  default     = "LRS"
}

variable "creator_tag" {
  description = "Creator tag to identify resources"
  type        = string
}
variable "storage_container_name" {
  description = "The name of the storage container"
  type        = string
}

variable "blob_name" {
  description = "The name of the blob file"
  type        = string
}

variable "blob_source" {
  description = "Path to the source file for the blob"
  type        = string
}
variable "cdn_profile_name" {
  description = "The name of the CDN profile"
  type        = string
}

variable "cdn_endpoint_name" {
  description = "The name of the CDN endpoint"
  type        = string
}
variable "vm_name" {
  description = "The name of the virtual machine"
  type        = string
}

variable "vm_sku" {
  description = "The size of the virtual machine"
  type        = string
}

variable "vm_username" {
  description = "Admin username for the virtual machine"
  type        = string
}

variable "vm_password" {
  description = "Admin password for the virtual machine"
  type        = string
  sensitive   = true
}
variable "rsv_name" {
  description = "Name of the Recovery Services Vault"
  type        = string
}

variable "backup_policy_name" {
  description = "Name of the backup policy"
  type        = string
}