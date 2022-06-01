resource "aws_instance" "web" {
  instance_type = var.instance_type
  ami           = var.instance_ami

  tags = var.tags
}