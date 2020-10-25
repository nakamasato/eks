variable "aws_region" {
  type    = string
  default = "ap-northeast-1"
}

variable "aws_profile" {
  type    = string
  default = "default"
}

variable "eks_prefix" {
  type    = string
  default = "terraform-eks"
}
