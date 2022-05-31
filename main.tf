provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bucket1" {
  bucket = "my-first-bucket-tf-roberto"

  tags = {
    Name = "My Bucket"
    test = "test"
  }
}