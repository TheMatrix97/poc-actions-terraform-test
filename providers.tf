terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  
  backend "s3" {
    bucket = "tf-remote-state20250504213322809300000001"
    key    = "my-vpc"
    dynamodb_table = "tf-remote-state-lock"
    region = "us-east-1"
  }

  required_version = ">= 1.1.5"
}

provider "aws" {
  region = var.region
} 
