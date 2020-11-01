# quick start

```
./quickstart.sh
```

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
    aws eks update-kubeconfig --name terraform-eks-custom --region ap-northeast-1 --profile <profile>
    ```

1. Check kube config is properly updated

    ```
    kubectl cluster-info
    Kubernetes master is running at https://<hash>.yl4.ap-northeast-1.eks.amazonaws.com
    CoreDNS is running at https://<hash>.ap-northeast-1.eks.amazonaws.com/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy

    To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
    ```

1. ConfigMap

    get config map from terraform output

    ```
    terraform output config_map_aws_auth > config_map_aws_auth.yaml
    ```

    Create ConfigMap using `kubectl`

    ```
    kubectl apply -f config_map_aws_auth.yaml
    configmap "aws-auth" created
    ```

1. Check

    nodes:

    ```
    kubectl get nodes
    NAME                                            STATUS   ROLES    AGE     VERSION
    ip-10-0-0-78.ap-northeast-1.compute.internal    Ready    <none>   3m12s   v1.17.11-eks-cfdc40
    ip-10-0-1-220.ap-northeast-1.compute.internal   Ready    <none>   3m12s   v1.17.11-eks-cfdc40
    ```

    pods:

    ```
    kubectl get pod --all-namespaces
    NAMESPACE     NAME                      READY   STATUS    RESTARTS   AGE
    kube-system   aws-node-bb5sd            1/1     Running   0          71s
    kube-system   aws-node-ldtm8            1/1     Running   0          73s
    kube-system   coredns-79769ff86-4l29s   1/1     Running   0          3m41s
    kube-system   coredns-79769ff86-dvpf9   1/1     Running   0          3m41s
    kube-system   kube-proxy-rmwhc          1/1     Running   0          71s
    kube-system   kube-proxy-vnh47          1/1     Running   0          73s
    ```

## Clean up a cluster

```
terraform destroy -var-file="your.tfvars"
```
