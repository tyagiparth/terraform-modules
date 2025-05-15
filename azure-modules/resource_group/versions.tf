terraform {
  required_version = "~> 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0.0"
    }
  }
}

