data "aws_iam_policy_document" "autoscaling-policy" {
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

resource "aws_iam_policy" "autoscaling-policy" {
  name        = "${local.name}-autoscaling"
  description = "enable cluster autoscaler (CA) in EKS"

  policy = data.aws_iam_policy_document.autoscaling-policy.json
}

resource "aws_iam_role_policy_attachment" "demo-node-autoscaling-policy" {
  policy_arn = aws_iam_policy.autoscaling-policy.arn
  role       = aws_iam_role.demo-node.name
}

