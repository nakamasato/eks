# How to use

## Create an EKS cluster

1. Prepare your own `tfvars`

    ```
    cp {example,your}.tfvars
    cp backend.conf{.example,}
    ```

1. apply terraform

    ```
    terraform init --backend-config="backend.conf"
    terraform apply -var-file="your.tfvars"
    ```

1. Set kube config

    ```
    aws eks update-kubeconfig --name terraform-eks-demo --region ap-northeast-1 --profile <profile>
    ```

## Clean up a cluster

```
terraform destroy -var-file="your.tfvars"
```

# Reference

https://github.com/terraform-aws-modules/terraform-aws-eks/blob/master/examples/managed_node_groups/main.tf

# Issues

failed to use managed node

```
Error: error waiting for EKS Node Group (terraform-aws-module:terraform-aws-module-example-renewed-pony) creation: Ec2SubnetInvalidConfiguration: One or more Amazon EC2 Subnets of [subnet-0cfa595fe09766c4c, subnet-0561ca73ddc43a520] for node group terraform-aws-module-example-renewed-pony does not automatically assign public IP addresses to instances launched into it. If you want your instances to be assigned a public IP address, then you need to enable auto-assign public IP address for the subnet. See IP addressing in VPC guide: https://docs.aws.amazon.com/vpc/latest/userguide/vpc-ip-addressing.html#subnet-public-ip. Resource IDs: [subnet-0cfa595fe09766c4c subnet-0561ca73ddc43a520]
```
