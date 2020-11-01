# Version

- Kubernetes: 1.17
- Terraform: 0.13.5

# Requirements

- Terraform

    [tfenv](https://github.com/tfutils/tfenv)

    ```
    terraform version
    Terraform v0.13.5
    + provider registry.terraform.io/hashicorp/aws v3.12.0
    ```

- awscli

    version >= 1.16 required

    ```
    pip install awscli --upgrade --user
    aws --version
    aws-cli/1.18.164 Python/3.8.0 Darwin/19.4.0 botocore/1.19.4
    ```

- aws-iam-authenticator

    https://docs.aws.amazon.com/eks/latest/userguide/install-aws-iam-authenticator.html

    ```
    curl -o aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.12.7/2019-03-27/bin/darwin/amd64/aws-iam-authenticator
    chmod +x ./aws-iam-authenticator
    mkdir $HOME/bin && cp ./aws-iam-authenticator $HOME/bin/aws-iam-authenticator && export PATH=$HOME/bin:$PATH
    echo 'export PATH=$HOME/bin:$PATH' >> ~/.zshrc
    aws-iam-authenticator help
    ```

- kubectl

    https://docs.aws.amazon.com/eks/latest/userguide/install-kubectl.html

    ```
    kubectl version --client
    Client Version: version.Info{Major:"1", Minor:"17+", GitVersion:"v1.17.11-eks-cfdc40", GitCommit:"cfdc40d4c1b7d14eb60152107963ae41aa2e4804", GitTreeState:"clean", BuildDate:"2020-09-17T17:10:39Z", GoVersion:"go1.13.15", Compiler:"gc", Platform:"darwin/amd64"}
    ```

## Directory

- [custom](custom): Created by myself
- [official](official): Using official [terraform-aws-eks](https://github.com/terraform-aws-modules/terraform-aws-eks) module

## Cluster Autoscaler

### Reference

https://eksworkshop.com/scaling/deploy_ca/


### settings of autoscaler

please refer to the k8s/cluster-autoscaler

## Container Insights

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
