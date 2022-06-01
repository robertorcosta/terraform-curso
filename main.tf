provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "bucket1" {
  bucket = "my-first-bucket-tf-roberto"

  tags = {
    Name = "My Bucket"
    test = "test"
  }
}

resource "aws_instance" "web" {
  instance_type = var.instance_type
  ami           = var.instance_ami

  tags = var.tags
}