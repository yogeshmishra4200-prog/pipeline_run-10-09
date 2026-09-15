x = {
  rg1 = { name = "pandu"
    location = "eastus"
  }

  rg2 = { name = "shivam-rg2"
    location = "eastus"
  }
}
y = {
  stg1 = { name = "shivamstg1"
    resource_group_name      = "shivam-rg2"
    location                 = "eastus"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  }
}

vnets = {
  vnet1 = {
    name                = "gta6_vnet1"
    location            = "eastus"
    resource_group_name = "pandu"
    address_space       = ["10.0.0.0/16"]
    dns_servers         = ["10.0.0.4", "10.0.0.5"]
  }
}
subnets = {
  subnet1 = {
    name                 = "frontend_gta6_subnet1"
    resource_group_name  = "pandu"
    virtual_network_name = "gta6_vnet1"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    name                 = "backend_gta6_subnet2"
    resource_group_name  = "pandu"
    virtual_network_name = "gta6_vnet1"
    address_prefixes     = ["10.0.2.0/24"]
  }
  subnet3 = {
    name                 = "database_gta6_subnet3"
    resource_group_name  = "pandu"
    virtual_network_name = "gta6_vnet1"
    address_prefixes     = ["10.0.3.0/24"]
  }
}

public_ip = {
  publicip1 = {
    name                = "gta6_publicip1"
    resource_group_name = "pandu"
    location            = "eastus"
    allocation_method   = "Static"
  }
  publicip2 = {
    name                = "gta6_publicip2"
    resource_group_name = "pandu"
    location            = "eastus"
    allocation_method   = "Static"
  }
  publicip3 = {
    name                = "gta6_publicip3"
    resource_group_name = "pandu"
    location            = "location"
    allocation_method   = "Static"
  }
}
vms = {
  vm1 = {
    name                = "gta6_vm1"
    resource_group_name = "pandu"
    location            = "eastus"
    vm_size             = "Standard_DS1_v2"
    admin_username      = "adminuser"
    admin_password      = "P@ssw0rd1234!"
    nic_name            = "nic_frontend_vm1"
    subnet_name         = "frontend_gta6_subnet1"
    virtual_network_name = "gta6_vnet1"


    vm2 = {
      name                = "gta6_vm2"
      resource_group_name = "pandu"
      location            = "eastus"
      vm_size             = "Standard_DS1_v2"
      admin_username      = "adminuser"
      admin_password      = "P@ssw0rd1234!"
      nic_name            = "nic_backend_vm1"
      subnet_name         = "backend_gta6_subnet2"
      virtual_network_name = "gta6_vnet1"
    }
    vm3 = {
      name                = "gta6_vm3"
      resource_group_name = "pandu"
      location            = "eastus"
      vm_size             = "Standard_DS1_v2"
      admin_username      = "adminuser"
      admin_password      = "P@ssw0rd1234!"
      nic_name            = "nic_database_vm0"
      subnet_name         = "database_gta6_subnet3"
      virtual_network_name = "gta6_vnet1"
    }
  }
}
