# EKS
## Version

- Kubernetes: [1.20.0](https://github.com/kubernetes/kubernetes/releases/tag/v1.20.0)

## Setup cluster

### Terraform

- Requirements
    - Terraform [1.0.0](https://github.com/hashicorp/terraform/releases/tag/v1.0.0)

        [tfenv](https://github.com/tfutils/tfenv)

        ```
        terraform version
        Terraform v1.0.0
        ```
    - awscli

        version >= 1.16 required

        ```
        pip install awscli --upgrade --user
        aws --version
        aws-cli/1.18.164 Python/3.8.0 Darwin/19.4.0 botocore/1.19.4
        ```

    - kubectl

        https://docs.aws.amazon.com/eks/latest/userguide/install-kubectl.html

        ```
        kubectl version --client --short
        Client Version: v1.19.3
        ```

1. Official Terraform module
    - [official](official): Using official [terraform-aws-eks](https://github.com/terraform-aws-modules/terraform-aws-eks) module

1. Custom Terraform module
    - [custom](custom): Created by myself

### eksctl

[eksctl](eksctl): [Official cli for Amazon EKS](https://eksctl.io/)
### Features

#### Cluster Autoscaler

Reference: https://www.eksworkshop.com/beginner/080_scaling/deploy_ca/
settings of autoscaler: please refer to the k8s/cluster-autoscaler

#### Container Insights

logs & metrics

```
curl https://raw.githubusercontent.com/aws-samples/amazon-cloudwatch-container-insights/latest/k8s-deployment-manifest-templates/deployment-mode/daemonset/container-insights-monitoring/quickstart/cwagent-fluentd-quickstart.yaml | sed "s/{{cluster_name}}/terraform-eks-demo/;s/{{region_name}}/ap-northeast-1/" | kubectl apply -f -
```

```
kubectl apply -f https://raw.githubusercontent.com/aws-samples/amazon-cloudwatch-container-insights/latest/k8s-deployment-manifest-templates/deployment-mode/daemonset/container-insights-monitoring/cloudwatch-namespace.yaml
```

# Resources

- iam
    - role
        - `ec2-demo-node`
        - `eks-demo-cluster`
    - policy
        - `log-policy`
        - `ebs-full-access`
    - aws_iam_instance_profile
        - `demo-node`
    - role_policy_attachment
- eks
    - `terraform-eks-demo`
- cloudwatch
    - log group
        - `/aws/eks/terraform-eks-demo/cluster`
- ec2
    - autoscaling group
    - ec2 instance (2 nodes)

# References

- Terraform
    - https://github.com/terraform-aws-modules/terraform-aws-eks
    - https://learn.hashicorp.com/tutorials/terraform/eks
- EKS
    - logging: https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html
    - worker node: https://docs.aws.amazon.com/eks/latest/userguide/eks-compute.html
    - Container Insights:
        - https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/deploy-container-insights-EKS.html
        - https://www.eksworkshop.com/intermediate/250_cloudwatch_container_insights/

# Issues

- [ ] Changing `instance_type` in launch_configuration doesn't trigger rolling update of worker nodes
