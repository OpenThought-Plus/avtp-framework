variable "key_name" {
  description = "Desired name of AWS key pair"
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "us-east-1"
}

# Ubuntu Bionic 18.08 LTS (x64)
variable "aws_amis" {
  default = {
    us-east-1 = "ami-012fd5eb46f56731f"
  }
}

