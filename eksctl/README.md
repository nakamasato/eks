# eksctl

version: [0.40.0](https://github.com/weaveworks/eksctl/releases/tag/0.40.0) (Released on 2021-03-05)

## with command line arguments

```
eksctl create cluster --name test-cluster --region ap-northeast-1 --profile eks-setup-user
```

```
eksctl delete cluster --name test-cluster --region ap-northeast-1 --profile eks-setup-user
```

## with yaml file


```
eksctl create cluster -f cluster.yaml --profile eks-setup-user
```

```
eksctl create cluster -f cluster.yaml --profile eks-setup-user
2021-07-27 22:41:12 [ℹ]  eksctl version 0.40.0
2021-07-27 22:41:12 [ℹ]  using region ap-northeast-1
2021-07-27 22:41:12 [ℹ]  setting availability zones to [ap-northeast-1a ap-northeast-1d ap-northeast-1c]
2021-07-27 22:41:12 [ℹ]  subnets for ap-northeast-1a - public:192.168.0.0/19 private:192.168.96.0/19
2021-07-27 22:41:12 [ℹ]  subnets for ap-northeast-1d - public:192.168.32.0/19 private:192.168.128.0/19
2021-07-27 22:41:12 [ℹ]  subnets for ap-northeast-1c - public:192.168.64.0/19 private:192.168.160.0/19
2021-07-27 22:41:12 [ℹ]  nodegroup "nodegroup-large" will use "ami-0041e50aa2aff5c2c" [AmazonLinux2/1.18]
2021-07-27 22:41:12 [ℹ]  nodegroup "nodegroup-medium" will use "ami-0041e50aa2aff5c2c" [AmazonLinux2/1.18]
2021-07-27 22:41:12 [ℹ]  using Kubernetes version 1.18
2021-07-27 22:41:12 [ℹ]  creating EKS cluster "test-cluster" in "ap-northeast-1" region with un-managed nodes
2021-07-27 22:41:12 [ℹ]  2 nodegroups (nodegroup-large, nodegroup-medium) were included (based on the include/exclude rules)
2021-07-27 22:41:12 [ℹ]  will create a CloudFormation stack for cluster itself and 2 nodegroup stack(s)
2021-07-27 22:41:12 [ℹ]  will create a CloudFormation stack for cluster itself and 0 managed nodegroup stack(s)
2021-07-27 22:41:12 [ℹ]  if you encounter any issues, check CloudFormation console or try 'eksctl utils describe-stacks --region=ap-northeast-1 --cluster=test-cluster'
2021-07-27 22:41:12 [ℹ]  CloudWatch logging will not be enabled for cluster "test-cluster" in "ap-northeast-1"
2021-07-27 22:41:12 [ℹ]  you can enable it with 'eksctl utils update-cluster-logging --enable-types={SPECIFY-YOUR-LOG-TYPES-HERE (e.g. all)} --region=ap-northeast-1 --cluster=test-cluster'
2021-07-27 22:41:12 [ℹ]  Kubernetes API endpoint access will use default of {publicAccess=true, privateAccess=false} for cluster "test-cluster" in "ap-northeast-1"
2021-07-27 22:41:12 [ℹ]  2 sequential tasks: { create cluster control plane "test-cluster", 3 sequential sub-tasks: { wait for control plane to become ready, create addons, 2 parallel sub-tasks: { create nodegroup "nodegroup-large", create nodegroup "nodegroup-medium" } } }
2021-07-27 22:41:12 [ℹ]  building cluster stack "eksctl-test-cluster-cluster"
2021-07-27 22:41:13 [ℹ]  deploying stack "eksctl-test-cluster-cluster"
2021-07-27 22:41:13 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:41:31 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:41:47 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:42:05 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:42:24 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:42:42 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:43:01 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:43:21 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:43:39 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:43:56 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:44:12 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:44:31 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:44:48 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:45:07 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:45:24 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:45:41 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:45:56 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:46:16 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:46:31 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:46:47 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:47:06 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:47:26 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:47:43 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:48:00 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:48:19 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:48:35 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:48:53 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:49:10 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:49:26 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:49:43 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:50:01 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:50:17 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:50:33 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:50:49 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:51:08 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:51:24 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:51:44 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:52:04 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:52:19 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:52:36 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:52:56 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:53:16 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:53:32 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:53:48 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:54:06 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:54:22 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:54:39 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 22:54:42 [ℹ]  building nodegroup stack "eksctl-test-cluster-nodegroup-nodegroup-large"
2021-07-27 22:54:42 [ℹ]  building nodegroup stack "eksctl-test-cluster-nodegroup-nodegroup-medium"
2021-07-27 22:54:42 [ℹ]  --nodes-min=1 was set automatically for nodegroup nodegroup-large
2021-07-27 22:54:42 [ℹ]  --nodes-min=2 was set automatically for nodegroup nodegroup-medium
2021-07-27 22:54:42 [ℹ]  --nodes-max=2 was set automatically for nodegroup nodegroup-medium
2021-07-27 22:54:42 [ℹ]  --nodes-max=1 was set automatically for nodegroup nodegroup-large
2021-07-27 22:54:42 [ℹ]  deploying stack "eksctl-test-cluster-nodegroup-nodegroup-medium"
2021-07-27 22:54:42 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-medium"
2021-07-27 22:54:42 [ℹ]  deploying stack "eksctl-test-cluster-nodegroup-nodegroup-large"
2021-07-27 22:54:42 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-large"
2021-07-27 22:54:57 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-medium"
2021-07-27 22:55:00 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-large"
2021-07-27 22:55:17 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-medium"
2021-07-27 22:55:20 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-large"
2021-07-27 22:55:33 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-medium"
2021-07-27 22:55:37 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-large"
2021-07-27 22:55:48 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-medium"
2021-07-27 22:55:52 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-large"
2021-07-27 22:56:05 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-medium"
2021-07-27 22:56:08 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-large"
2021-07-27 22:56:22 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-medium"
2021-07-27 22:56:27 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-large"
2021-07-27 22:56:42 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-medium"
2021-07-27 22:56:45 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-large"
2021-07-27 22:57:01 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-large"
2021-07-27 22:57:02 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-medium"
2021-07-27 22:57:19 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-medium"
2021-07-27 22:57:20 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-large"
2021-07-27 22:57:37 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-large"
2021-07-27 22:57:37 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-medium"
2021-07-27 22:57:53 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-medium"
2021-07-27 22:57:56 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-large"
2021-07-27 22:58:12 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-large"
2021-07-27 22:58:13 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-medium"
2021-07-27 22:58:13 [✖]  unexpected status "ROLLBACK_IN_PROGRESS" while waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-medium"
2021-07-27 22:58:13 [ℹ]  fetching stack events in attempt to troubleshoot the root cause of the failure
2021-07-27 22:58:13 [!]  AWS::IAM::Role/NodeInstanceRole: DELETE_IN_PROGRESS
2021-07-27 22:58:13 [!]  AWS::EC2::SecurityGroup/SG: DELETE_IN_PROGRESS
2021-07-27 22:58:13 [!]  AWS::IAM::InstanceProfile/NodeInstanceProfile: DELETE_IN_PROGRESS
2021-07-27 22:58:13 [!]  AWS::EC2::LaunchTemplate/NodeGroupLaunchTemplate: DELETE_IN_PROGRESS
2021-07-27 22:58:13 [!]  AWS::EC2::SecurityGroupIngress/IngressInterClusterCP: DELETE_IN_PROGRESS
2021-07-27 22:58:13 [!]  AWS::EC2::SecurityGroupEgress/EgressInterClusterAPI: DELETE_IN_PROGRESS
2021-07-27 22:58:13 [!]  AWS::EC2::SecurityGroupEgress/EgressInterCluster: DELETE_IN_PROGRESS
2021-07-27 22:58:13 [✖]  AWS::AutoScaling::AutoScalingGroup/NodeGroup: CREATE_FAILED – "You must use a valid fully-formed launch template. Invalid value 'm5.medium' for InstanceType. (Service: AmazonAutoScaling; Status Code: 400; Error Code: ValidationError; Request ID: c1698143-1c97-4e42-97c2-b9c0d40e3544; Proxy: null)"
2021-07-27 22:58:13 [!]  1 error(s) occurred and cluster hasn't been created properly, you may wish to check CloudFormation console
2021-07-27 22:58:13 [ℹ]  to cleanup resources, run 'eksctl delete cluster --region=ap-northeast-1 --name=test-cluster'
2021-07-27 22:58:13 [✖]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-medium": ResourceNotReady: failed waiting for successful resource state
Error: failed to create cluster "test-cluster"
```
