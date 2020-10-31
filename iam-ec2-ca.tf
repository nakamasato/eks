data "aws_iam_policy_document" "autoscaling" {
  statement {
    actions = [
      "autoscaling:DescribeAutoScalingGroups",
      "autoscaling:DescribeAutoScalingInstances",
      "autoscaling:SetDesiredCapacity",
      "autoscaling:TerminateInstanceInAutoScalingGroup",
    ]
    resources = ["*"]
    effect    = "Allow"
  }
}

resource "aws_iam_policy" "autoscaling" {
  name        = "${local.name}-autoscaling"
  description = "enable cluster autoscaler (CA) in EKS"

  policy = data.aws_iam_policy_document.autoscaling.json
}

resource "aws_iam_role_policy_attachment" "demo-node-autoscaling" {
  policy_arn = aws_iam_policy.autoscaling.arn
  role       = aws_iam_role.demo-node.name
}
