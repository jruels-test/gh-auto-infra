terraform {
  backend "s3" {
    bucket = "my-terraform-state-bucket-01062025"
    key    = "terraform.tfstate"
    region = "us-west-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.82.2"
    }
  }
}

provider "aws" {
  region = var.aws_region
} 
