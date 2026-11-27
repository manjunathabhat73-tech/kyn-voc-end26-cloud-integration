variable "resource_group_name" {
  description = "this is the name of the rg"
  type        = string
  default     = "rg-ma-Manju73"
}

variable "location" {
  description = "this is the location of the rg"
  type        = string
  default     = "eastus"
}

variable "vnet_name" {
  description = "this is the name of the vnet"
  type        = string
  default     = "vnet-ma"
}

variable "vnet_address_space" {
  description = "this is the address space of the vnet"
  type        = list(string)
  default     = ["172.31.0.0/16"]
}

variable "subnet_name" {
  description = "this is the name of the subnet"
  type        = string
  default     = "subnet-ma"
}
variable "subnet_address_prefixes" {
  description = "this is the address prefixes of the subnet"
  type        = list(string)
  default     = ["172.31.1.0/24"]
}
variable "environment" {
  type    = string
  default = "dev"
}

variable "department" {
  type    = string
  default = "sap"
}