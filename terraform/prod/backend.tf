terraform {
  backend "s3" {
    bucket         = "fullstack-challenge-state-files"
    key            = "environments/${var.environment}/terraform.tfstate"
    region         = "us-west-2"
    encrypt        = true
  }
}