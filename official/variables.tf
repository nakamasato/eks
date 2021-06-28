variable "aws_region" {
  type    = string
  default = "ap-northeast-1"
}

variable "aws_profile" {
  type    = string
  default = "default"
}

variable "cluster_name" {
  type    = string
  default = "terraform-aws-module"
}

variable "kubernetes_version" {
  default = "1.20"
}

variable "allowed_cidr_blocks" {
  default     = []
  description = "whitelist ip range for api"
}

variable "vpc_cidr_block" {
  default = "10.10.0.0/16"
}
