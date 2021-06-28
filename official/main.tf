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
}

module "my-cluster" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = var.cluster_name
  cluster_version = var.kubernetes_version
  subnets         = module.vpc.subnet_ids
  vpc_id          = module.vpc.vpc_id
  tags = {
      Environment = "dev"
      Name = var.cluster_name
  }

  worker_groups = [
    {
      instance_type = "t2.small"
      asg_max_size  = 2
    }
  ]

  node_groups = {
    example = {
      desired_capacity = 1
      max_capacity     = 10
      min_capacity     = 1

      instance_type = "t2.small"
      k8s_labels = {
        Environment = "dev"
        nodegroup  = "managed-node"
      }
      additional_tags = {
        managed = "true"
      }
    }
  }
}
