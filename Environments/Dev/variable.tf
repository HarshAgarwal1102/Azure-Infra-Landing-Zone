variable "rgs" {
  type = map(object({
    name        = string
    location    = string
    environment = string
  }))
}

variable "vnets" {
  type = map(object({
    name                = string
    address_space       = list(string)
    location            = string
    resource_group_name = string
    environment         = string
  }))
}

variable "subnets" {
  type = map(object({
    name                 = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
  }))
}

variable "public_ips" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    allocation_method   = string
    sku                 = string
    environment         = string
  }))
}

variable "virtual_machines" {
  type = map(object({
    name                          = string
    location                      = string
    resource_group_name           = string
    virtual_network_name          = string
    subnet_name                   = string
    vm_size                       = string
    admin_username                = string
    admin_password                = string
    public_ip_name                = string
    nic_name                      = string
    ip_configuration_name         = string
    private_ip_address_allocation = string
    caching                       = string
    storage_account_type          = string
    publisher                     = string
    offer                         = string
    sku                           = string
    version                       = string
  }))
}