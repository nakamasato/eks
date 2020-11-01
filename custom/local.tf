locals {
  prefix             = var.eks_prefix
  name               = "${var.eks_prefix}-demo"
  kubernetes-version = "1.17"
}
