resource_group_name = "rg-kyn-manju"
location = "eastus"
vnet_name = "kyn-vnet"
vnet_address_space = ["10.0.0.0/16"]
subnet_name = "kyn-web-subnet"
subnet_address_prefixes = ["10.0.1.0/24"]
environment = "dev"
department = "it"
linux_vms = {
    "web1" = {
      vm_size = "Standard_D2ads_v6"
      zone    = "1"
    } 
}