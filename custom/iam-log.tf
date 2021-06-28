data "aws_iam_policy_document" "log-policy" {
  statement {
    actions = [
      "logs:DescribeLogGroups",
      "logs:DescribeLogStreams",
      "logs:CreateLogGroup",
      "logs:CreateLogStream",
      "logs:PutLogEvents",
    ]
    resources = ["*"]
    effect    = "Allow"
  }
}

resource "aws_iam_policy" "log-policy" {
  name        = "${var.cluster_name}-log"
  description = "enable get log of EKS"

  policy = data.aws_iam_policy_document.log-policy.json
}

resource "aws_iam_role_policy_attachment" "demo-node-log-policy" {
  policy_arn = aws_iam_policy.log-policy.arn
  role       = aws_iam_role.demo-node.name
}
