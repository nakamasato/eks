module "vpc" {
  source       = "../modules/vpc"
  cidr_block   = var.vpc_cidr_block
  name         = var.cluster_name
  cluster_name = var.cluster_name
}

data "aws_eks_cluster" "cluster" {
  name = module.my-cluster.cluster_id
}

data "aws_eks_cluster_auth" "cluster" {
  name = module.my-cluster.cluster_id
}

provider "kubernetes" {
  host                   = data.aws_eks_cluster.cluster.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data)
  token                  = data.aws_eks_cluster_auth.cluster.token
  load_config_file       = false
  version                = "~> 1.9"
}

module "my-cluster" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = var.cluster_name
  cluster_version = var.kubernetes_version
  subnets         = module.vpc.subnet_ids
  vpc_id          = module.vpc.vpc_id

  worker_groups = [
    {
      instance_type = "t2.small"
      asg_max_size  = 2
    }
  ]
}
