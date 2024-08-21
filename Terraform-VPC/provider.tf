terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"

    }
  }

  backend "s3" {
    bucket = "kan-emr-works"
    key    = "terraform-cicd/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}