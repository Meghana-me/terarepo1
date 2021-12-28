provider "azurerm" {
   
  features {}
  
  subscription_id = "d0383739-318c-48f1-863e-36cbb770ec27"
  client_id       = "adeb5130-8182-4869-9704-839d038504ea"
  client_secret   = "VxB7Q~3MTvtIhSax2OJiEyqGvQXha127JDqHF"
  tenant_id       = "9e34425d-ba1f-40da-b9b7-663660bef8d9"
}
terraform {
    backend "azurerm" {
        resource_group_name ="jenkins-rg"
        storage_account_name = "terraformstore1245"
        container_name = "con1"
        key = "terraform.tfstate"
    }
}

resource "azurerm_resource_group" "demo" {
  name     = "demojenkins-rg"
    location = "eastus"
}


