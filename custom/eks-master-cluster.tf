module "vpc" {
  source       = "../modules/vpc"
  cidr_block   = var.vpc_cidr_block
  name         = var.cluster_name
  cluster_name = var.cluster_name
}

resource "aws_eks_cluster" "demo" {
  name                      = var.cluster_name
  role_arn                  = aws_iam_role.demo-cluster.arn
  version                   = var.kubernetes_version
  enabled_cluster_log_types = ["api", "audit", "authenticator", "controllerManager", "scheduler"]

  vpc_config {
    security_group_ids = [aws_security_group.demo-cluster.id]
    subnet_ids         = module.vpc.subnet_ids
  }

  depends_on = [
    aws_iam_role_policy_attachment.demo-cluster-AmazonEKSClusterPolicy,
    aws_iam_role_policy_attachment.demo-cluster-AmazonEKSServicePolicy,
    # aws_cloudwatch_log_group.demo,
  ]
}
