resource "aws_s3_bucket" "bucket1" {
  bucket = "${random_pet.bucket.id}-${var.env_dev}"

  tags = local.common_tags
}

resource "aws_s3_object" "bucket1" {
  bucket = aws_s3_bucket.bucket1.bucket
  key    = "config/${local.ips}"
  source = local.ips
  etag   = filemd5(local.ips)
}