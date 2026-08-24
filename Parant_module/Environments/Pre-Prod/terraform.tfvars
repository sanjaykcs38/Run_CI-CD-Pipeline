
rgs = {
  rg_100 = {
    name     = "RG_Env"
    location = "centralindia"
  }
  rg_101 = {
    name     = "RG_Env2"
    location = "centralindia"
  }

  rg_102 = {
    name     = "RG_Env3"
    location = "centralindia"
  }
  rg_103 = {
    name     = "RG_Env4"
    location = "centralindia"
  }
}
vnets = {
  vnet1 = {
    name                = "Vnet_100"
    location            = "centralindia"
    resource_group_name = "RG_Env"
    address_space       = ["10.0.0.0/16"]
  }

}
subnets = {
  Subnet1 = {
    name                 = "Frontend-subnet"
    resource_group_name  = "RG_Env"
    virtual_network_name = "Vnet_100"
    address_prefixes     = ["10.0.1.0/24"]

  }
  Subnet2 = {
    name                 = "Backend-subnet"
    resource_group_name  = "RG_Env"
    virtual_network_name = "Vnet_100"
    address_prefixes     = ["10.0.2.0/24"]
  }
}
PIP = {
  public_ip1 = {
    name                = "Public-ip_frontend"
    resource_group_name = "RG_Env"
    location            = "centralindia"
    allocation_method   = "Static"
  }
  public_ip2 = {
    name                = "Public-ip_backend"
    resource_group_name = "RG_Env"
    location            = "centralindia"
    allocation_method   = "Static"
  }

}
NICS_VM = {
  VM1 = {
    nic_name            = "frontend-VM-Nic"
    location            = "centralindia"
    resource_group_name = "RG_Env"
    subnet_name         = "Frontend-subnet"
    Vnet_name           = "Vnet_100"
    PublicIP_name       = "Public-ip_frontend"
    vm_name             = "frontend-vm"
    vm_size             = "Standard_D2s_v3"
    admin_username      = "Sanjay101210"
    admin_password      = "Sanjay101210"
  }
  VM2 = {
    nic_name            = "backend-VM-Nic"
    location            = "centralindia"
    resource_group_name = "RG_Env"
    subnet_name         = "Backend-subnet"
    Vnet_name           = "Vnet_100"
    PublicIP_name       = "Public-ip_backend"
    vm_name             = "backend-vm"
    vm_size             = "Standard_D2s_v3"
    admin_username      = "Sanjay101210"
    admin_password      = "Sanjay101210"
  }

}
