/* make sure you bootstap the storage account and container before running the terraform init while 
you mention the storage account details and container detials in backend block
*/

terraform {
  
  backend "azurerm" {
    resource_group_name  = "rg-terraform-backend"
    storage_account_name = "roytfstate123"
    container_name       = "tfstateenvs"
    key                  = "terraform.tfstate"
  }
}

