variable "aws_region" {
  type    = string
  default = "ap-northeast-1"
}

variable "aws_profile" {
  type    = string
  default = "default"
}

variable "vpc_cidr_block" {
  default     = "10.0.0.0/16"
  description = "cidr for vpc"
}

variable "cluster_name" {
  type    = string
  default = "terraform-aws-custom"
}

variable "kubernetes_version" {
  default = "1.17"
}

variable "allowed_cidr_blocks" {
  default     = []
  description = "whitelist ip range for api"
}
