resource_group_name = "rg-kyn-manju"
location = "eastus"
vnet_name = "kyn-vnet"
vnet_address_space = ["172.32.0.0/16"]
subnet_name = "kyn-web-subnet"
subnet_address_prefixes = ["172.32.1.0/24"]
environment = "prod"
department = "it"
linux_vms = {
    "web1" = {
      vm_size = "Standard_D2ads_v6"
      zone    = "1"
    } 
    "web2" = {
      vm_size = "Standard_D2s_v6"
      zone    = "2"
    }
    "web3" = {
      vm_size = "Standard_D2s_v6"
      zone    = "2"
    }
}