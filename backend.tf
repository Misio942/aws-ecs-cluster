provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "s3-terraform-backend-misio"
    key    = "backend-s3/ecs-cluster/terraform.tfstate"
    region = "us-east-1"
  }
}