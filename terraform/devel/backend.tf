# terraform {
#   backend "s3" {
#     bucket         = "fullstack-challenge-state-files"
#     key            = "environments/devel/terraform.tfstate"
#     region         = "us-east-1"
#     encrypt        = true
#   }
# }