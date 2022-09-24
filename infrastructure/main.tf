locals {
  prefix = "${terraform.workspace}-${var.prefix}"
  common_tags = {
    ManagedBy   = "Terraform"
    Department  = "education",
    Provider    = "PucMinas",
    Owner       = "DevOps Team"
    Billing     = "Infrastructure"
    Environment = terraform.workspace
    UserEmail   = "juniorpsilva@msn.com"
  }
}

terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.26.0"
    }
  }

  backend "s3" {
    profile = "terraform"
    bucket  = "devops-pucminas-997676262155-us-east-1"
    key     = "state/devops/trabalhopratico.tfstate"
    region  = "us-east-1"
    encrypt = true
  }

}
