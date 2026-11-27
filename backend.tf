terraform {
  backend "azurerm" {
    resource_group_name = "terraform-storage-manju" #in value put the storage account rg name
    storage_account_name = "manjustorage" #in value replace it with storage account name
    container_name = "tfstatefiles" #replace it with the container we have created tfstate
    key = "project.tfstate" #this is the name of the state file which will be created in the container
  }
}