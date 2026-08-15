rgs = {
  rg1 = {
    name        = "DeveloperRG"
    location    = "Central India"
    environment = "dev"
  }
}

vnets = {
  vnet1 = {
    name                = "virtual-network"
    address_space       = ["10.0.0.0/16"]
    location            = "Central India"
    resource_group_name = "DeveloperRG"
    environment         = "dev"
  }
}

subnets = {
  subnet1 = {
    name                 = "Frontend-subnet"
    resource_group_name  = "DeveloperRG"
    virtual_network_name = "virtual-network"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    name                 = "Backend-subnet"
    resource_group_name  = "DeveloperRG"
    virtual_network_name = "virtual-network"
    address_prefixes     = ["10.0.2.0/24"]
  }
}

public_ips = {
  public_ip_1 = {
    name                = "public-ip-1"
    location            = "Central India"
    resource_group_name = "DeveloperRG"
    allocation_method   = "Static"
    sku                 = "Standard"
    environment         = "dev"
  }
}

virtual_machines = {
  vm1 = {
    name                 = "FrontendVM1"
    location             = "Central India"
    resource_group_name  = "DeveloperRG"
    virtual_network_name = "virtual-network"
    subnet_name          = "Frontend-subnet"
    vm_size              = "Standard_D4_v5"
    admin_username       = "adminuser"
    admin_password       = "P@ssw0rd123!"
    public_ip_name       = "public-ip-1"

    nic_name                      = "FrontendVM1-nic"
    ip_configuration_name         = "internal"
    private_ip_address_allocation = "Dynamic"
    caching                       = "ReadWrite"
    storage_account_type          = "Standard_LRS"
    publisher                     = "Canonical"
    offer                         = "0001-com-ubuntu-server-jammy"
    sku                           = "22_04-lts"
    version                       = "latest"
  }
}