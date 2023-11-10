terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }

    aws = {
      source  = "hashicorp/aws"
      version = ">= 2.0.0"
    }

    azurerm = {
      source  = "registry.terraform.io/hashicorp/azurerm"
      version = "~> 2.12"

    }

  }

  required_version = ">= 1.1"
}

// terraform -version
/*
terraform providers lock \
  -platform=linux_arm64 \
  -platform=linux_amd64 \
  -platform=darwin_amd64 \
  -platform=windows_amd64
*/
