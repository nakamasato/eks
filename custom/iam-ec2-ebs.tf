# this is for portworx
data "aws_iam_policy_document" "ebs-full-access" {
  statement {
    actions = [
      "ec2:AttachVolume",
      "ec2:DetachVolume",
      "ec2:CreateTags",
      "ec2:CreateVolume",
      "ec2:DeleteTags",
      "ec2:DeleteVolume",
      "ec2:DescribeTags",
      "ec2:DescribeVolumeAttribute",
      "ec2:DescribeVolumesModifications",
      "ec2:DescribeVolumeStatus",
      "ec2:DescribeVolumes",
      "ec2:DescribeInstances"
    ]
    resources = ["*"]
    effect    = "Allow"
  }
}

resource "aws_iam_policy" "ebs-full-access" {
  name        = "${var.cluster_name}-ebs-full-access-"
  description = "enable portworx running on eks worker node to create/delete ebs"

  policy = data.aws_iam_policy_document.ebs-full-access.json
}

resource "aws_iam_role_policy_attachment" "demo-node-ebs-full-access" {
  policy_arn = aws_iam_policy.ebs-full-access.arn
  role       = aws_iam_role.demo-node.name
}
