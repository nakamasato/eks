resource "aws_eks_cluster" "demo" {
  name                      = local.name
  role_arn                  = aws_iam_role.demo-cluster.arn
  version                   = local.kubernetes-version
  enabled_cluster_log_types = ["api", "audit", "authenticator", "controllerManager", "scheduler"]

  vpc_config {
    security_group_ids = [aws_security_group.demo-cluster.id]
    subnet_ids         = aws_subnet.demo.*.id
  }

  depends_on = [
    aws_iam_role_policy_attachment.demo-cluster-AmazonEKSClusterPolicy,
    aws_iam_role_policy_attachment.demo-cluster-AmazonEKSServicePolicy,
    # aws_cloudwatch_log_group.demo,
  ]
}
