
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.76.0"
    }
  }
# backend "azurerm" {
#     tenant_id            = "2121638c-2247-44a7-8b82-697632b4b79a"
#     resource_group_name  = "RG_Storage1"
#     storage_account_name = "landingzonestatefile"
#     container_name       = "landingstate" 
#     key                  = "prod.terraform.tfstate" 
#   }

 }

provider "azurerm" {
  features {}
}