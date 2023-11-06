provider "aws" {
  region = "eu-central-1"
}

resource "random_pet" "petname" {
  length    = 3
  separator = "-"
}

resource "aws_s3_bucket" "sample" {
  bucket = random_pet.petname.id
  tags = {
    Can_be_deleted = true
  }
}
