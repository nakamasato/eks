resource "aws_cloudwatch_log_group" "demo" {
  name              = "/aws/eks/${local.name}/cluster"
  retention_in_days = 7
}
