terraform {
  required_version = ">= 1.13"
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "= 4.31.0"
    }
    random = {
        source = "hashicorp/random"
        version = ">= 3.0"
    }
  }
}
