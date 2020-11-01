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
