resource "aws_s3_bucket" "bucket1" {
  bucket = "${random_pet.bucket.id}-${var.env_dev}"

  tags = local.common_tags
}

resource "aws_s3_bucket" "bucket" {
  bucket = "my-bucket-test-roberto92"

  tags = {
    Type       = "S3"
    Name       = "Bucket test"
    testImport = "imported"
  }
}

resource "aws_s3_object" "bucket1" {
  bucket = aws_s3_bucket.bucket1.bucket
  key    = "config/${local.ips}"
  source = local.ips
  etag   = filemd5(local.ips)
}


resource "aws_s3_bucket" "name" {
  bucket = "remote-state-roberto-992"

  tags = {
    func  = "state"
    teste = "version"
  }

}

resource "aws_s3_bucket_versioning" "versioning_bucket_tfstate" {
  bucket = aws_s3_bucket.name.id

  versioning_configuration {
    status = "Enabled"
  }
}