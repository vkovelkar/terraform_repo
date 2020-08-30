resource "aws_s3_bucket" "my_terraform_s3_bucket_for_state_store" {
  bucket = "passionstatefile"
  versioning {
    enabled = true
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}