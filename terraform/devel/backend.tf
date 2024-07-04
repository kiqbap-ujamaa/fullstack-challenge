terraform {
  backend "s3" {
    bucket         = "fullstack-challenge-state-files"
    key            = "environments/devel/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    access_key = "${{ secrets.AWS_ACCESS_KEY_ID }}"
    secret_key = "${{ secrets.AWS_SECRET_ACCESS_KEY }}"
  }
}