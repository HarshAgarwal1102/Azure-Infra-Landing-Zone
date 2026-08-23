resource "azurerm_resource_group" "terraform_state" {
  for_each = var.rgs
  name     = each.value.name
  location = each.value.location
}

resource "azurerm_storage_account" "terraform_state" {
  for_each = var.storage_accounts

  name                     = each.value.StorageAccountName
  resource_group_name      = azurerm_resource_group.terraform_state["rg1"].name
  location                 = azurerm_resource_group.terraform_state["rg1"].location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type

  min_tls_version                 = each.value.min_tls_version
  allow_nested_items_to_be_public = each.value.allow_nested_items_to_be_public
}

resource "azurerm_storage_container" "terraform_state" {
  for_each = var.storage_account_containers

  name                  = each.value.container_name
  storage_account_id    = azurerm_storage_account.terraform_state["stoa1"].id
  container_access_type = each.value.container_access_type
}