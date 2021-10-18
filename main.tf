terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
 #configure central repo for state management
  backend "s3" {
    bucket         = "precious-workspace"
    key            = "precious-workspace/terraform.tfstate"
    region         = "eu-west-1"
    profile        = "default"
    dynamodb_table = "precious-workspace"
  }

}

# Configure the AWS Provider
provider "aws" {
  region              = "eu-west-1"
  profile             = "default"
  allowed_account_ids = ["074656803336"]
}