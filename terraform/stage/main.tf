

provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "app_bucket" {
  bucket = "${var.bucket_name}"
}

resource "aws_s3_bucket_website_configuration" "app_bucket_website" {
  bucket = aws_s3_bucket.app_bucket.bucket

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}

output "bucket_name" {
  value = aws_s3_bucket.app_bucket.id
}

output "bucket_website_url" {
  value = aws_s3_bucket_website_configuration.app_bucket_website.website_endpoint
}
