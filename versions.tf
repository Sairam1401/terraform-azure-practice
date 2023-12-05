# Includes terraform and azure provider version and other global parameters like subscription information.
terraform {
  required_version = ">=1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.61.0"
    }
  }
}

provider "azurerm" {
  features {}
  alias           = "vnet-alias"
  subscription_id = var.azure_vnet_subscription_id
}