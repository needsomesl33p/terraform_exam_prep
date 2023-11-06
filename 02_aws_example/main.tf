terraform {
  # cloud {
  #   organization = "needsomesheep-org"
  #   workspaces {
  #     name = "exam-prep"
  #   }
  # }
  # backend "remote" {
  #   organization = "needsomesheep-org"
  #   workspaces {
  #     name = "exam-prep"
  #   }
  # }
  backend "local" {
    path = ".terraform/terraform.tfstate"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" { // This must match with the source provider ohterwise getting this error: This configuration requires provider registry.terraform.io/hashicorp/aws-eu but that provider isn't available.
  region = "eu-central-1"
}

resource "aws_instance" "hello-word-aws-ec2" {
  //ami           = "ami-0a485299eeb98b979" AMZ Linux
  ami           = "ami-06dd92ecc74fdfb36" // Ubuntu
  instance_type = "t2.micro"

  tags = {
    Team = "NextGen DevOps"
    Name = var.instance_name
  }
}
