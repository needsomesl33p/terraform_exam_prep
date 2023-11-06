terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.8.0"
    }
    random = {
      version = ">= 2.9.0"
    }

  }
  required_version = "~> 1.6.2"
}

resource "random_pet" "pet_name" {
  length = 2
}
