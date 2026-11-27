variable "linux_vms" {
  description = "linux vm configuration across az"
  type = map(object({
    vm_size = string
    zone    = string
  }))
  default = {
    "web1" = {
      vm_size = "Standard_D2ads_v6"
      zone    = "1"
    }
    "web2" = {
      vm_size = "Standard_D2s_v6"
      zone    = "2"
    }
  }
}