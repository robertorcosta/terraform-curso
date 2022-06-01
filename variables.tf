variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}

variable "instance_ami" {
  type        = string
  description = ""
  default     = "ami-0022f774911c1d690"
}

variable "instance_type" {
  type        = string
  description = ""
  default     = "t2.micro"
}

variable "tags" {
  type        = map(string)
  description = ""
  default = {
    Name = "My instance 1"
    Env  = "teste"
  }
}