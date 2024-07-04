terraform {
  backend "s3" {
    bucket         = "fullstack-challenge-state-files"
    key            = "environments/prod/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}