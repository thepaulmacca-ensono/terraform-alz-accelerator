terraform {
  required_version = "~> 1.12"
  required_providers {
    alz = {
      source  = "Azure/alz"
      version = "0.20.1"
    }
    azapi = {
      source  = "Azure/azapi"
      version = "~> 2.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "~> 0.12"
    }
  }
  # backend "azurerm" {}
}

provider "alz" {
  library_overwrite_enabled = true
  library_references = [
    {
      custom_url = "${path.root}/lib"
    }
  ]
}

provider "azapi" {
  skip_provider_registration = true
  subscription_id            = var.subscription_ids["management"]
}

provider "azurerm" {
  resource_provider_registrations = "none"
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}
