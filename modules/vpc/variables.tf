variable "cidr_block" {
  default     = "10.0.0.0/16"
  description = "cidr for vpc"
}

variable "cluster_name" {
  type        = string
  description = "eks cluster name"
}

variable "name" {
  default     = "dev"
  description = "vpc name"
}
