resource "aws_s3_bucket" "my_terraform_s3" {
  bucket_prefix = var.s3_prefix
  versioning {
    enabled = true
  }
}