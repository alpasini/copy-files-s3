provider "aws" {
  region = var.aws_region
}


# Centralizar o arquivo de controle de estado do terraform
# Criar um S3 manual
terraform {
  backend "s3" {
    bucket = "terraform-state-igti-alex"
    key = "state/terraform.tfstate"
    region = "us-east-2"
  }
 
}