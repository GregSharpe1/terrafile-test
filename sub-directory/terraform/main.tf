resource aws_s3_bucket bucket {
  bucket = "${var.stack}-random-string"
  acl = "private"

  force_destroy = true

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}
