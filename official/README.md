# eks cluster with terraform-aws-eks module

This will create dedicated VPC with cidr `172.16.0.0/16` and name `cluster_name` given by variable. This example is based on https://github.com/terraform-aws-modules/terraform-aws-eks/blob/master/examples/managed_node_groups

## Create an EKS cluster

1. Prepare your own `tfvars`

    ```
    cp {example,your}.tfvars
    cp backend.conf{.example,}
    ```

1. apply terraform

    ```
    terraform init --backend-config="backend.conf"
    terraform apply -var-file=your.tfvars
    ```

1. Set kube config

    ```
    aws eks update-kubeconfig --name terraform-eks-demo --region ap-northeast-1 --profile <profile>
    ```

## Clean up a cluster

```
terraform destroy -var-file="your.tfvars"
```

## Node Groups

- `node_groups`: [AWS managed node groups](https://docs.aws.amazon.com/eks/latest/userguide/managed-node-groups.html)
- `worker_groups`: [self-managed node](https://docs.aws.amazon.com/eks/latest/userguide/worker.html)

Both can be used together in the same cluster.

[What is the difference between node_groups and worker_groups?](https://github.com/terraform-aws-modules/terraform-aws-eks/blob/master/docs/faq.md#what-is-the-difference-between-node_groups-and-worker_groups)
# Reference

- https://github.com/terraform-aws-modules/terraform-aws-eks/blob/master/examples/managed_node_groups/main.tf
- https://github.com/terraform-aws-modules/terraform-aws-eks/blob/master/docs/iam-permissions.md#iam-permissions

# Issues

failed to use managed node

```
Error: error waiting for EKS Node Group (terraform-aws-module:terraform-aws-module-example-renewed-pony) creation: Ec2SubnetInvalidConfiguration: One or more Amazon EC2 Subnets of [subnet-0cfa595fe09766c4c, subnet-0561ca73ddc43a520] for node group terraform-aws-module-example-renewed-pony does not automatically assign public IP addresses to instances launched into it. If you want your instances to be assigned a public IP address, then you need to enable auto-assign public IP address for the subnet. See IP addressing in VPC guide: https://docs.aws.amazon.com/vpc/latest/userguide/vpc-ip-addressing.html#subnet-public-ip. Resource IDs: [subnet-0cfa595fe09766c4c subnet-0561ca73ddc43a520]
```

```
╷
│ Error: error waiting for EKS Node Groupe (terraform-aws-module:terraform-aws-module-example20210628025017034400000001) to create: unexpected state 'CREATE_FAILED', wanted target 'ACTIVE'. last error: %!s(<nil>)
│
│   with module.my-cluster.module.node_groups.aws_eks_node_group.workers["example"],
│   on .terraform/modules/my-cluster/modules/node_groups/node_groups.tf line 1, in resource "aws_eks_node_group" "workers":
│    1: resource "aws_eks_node_group" "workers" {
│
```
