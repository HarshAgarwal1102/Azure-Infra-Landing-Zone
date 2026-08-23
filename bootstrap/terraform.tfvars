rgs = {
  rg1 = {
    name     = "rg-terraform-state"
    location = "centralindia"
  }
}

storage_accounts = {
  stoa1 = {
    StorageAccountName              = "tfstatedatastore"
    account_tier                    = "Standard"
    account_replication_type        = "LRS"
    min_tls_version                 = "TLS1_2"
    allow_nested_items_to_be_public = false
  }
}

storage_account_containers = {
  stoc1 = {
    container_name        = "tfstate"
    container_access_type = "private"
  }
}