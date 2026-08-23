variable "rgs" {
  type = map(object({
    name     = string
    location = string
  }))
}
variable "storage_accounts" {
  type = map(object({
    StorageAccountName              = string
    account_tier                    = string
    account_replication_type        = string
    min_tls_version                 = string
    allow_nested_items_to_be_public = bool
  }))
}
variable "storage_account_containers" {
  type = map(object({
    container_name        = string
    container_access_type = string
  }))
}