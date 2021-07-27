# eksctl

This creates VPC with cidr `192.168.0.0/16`, 3 private subnets, 3 public subnets and name `eksctl-<cluster_name>-cluster/VPC` and EKS cluster with name `cluster_name` given by the argument.

## Version

- eksctl: [0.58.0](https://github.com/weaveworks/eksctl/releases/tag/0.58.0) (Released on 2021-07-23)
- kubernetes: (you can specify) v1.20.0 (default)

## AWS permissions

https://github.com/weaveworks/eksctl#aws-account
## with command line arguments

```
eksctl create cluster --name test-cluster --region ap-northeast-1 --profile eks-setup-user
```

<details>

```
eksctl create cluster --name test-cluster --region ap-northeast-1 --profile eks-setup-user
2021-07-28 06:48:22 [ℹ]  eksctl version 0.58.0
2021-07-28 06:48:22 [ℹ]  using region ap-northeast-1
2021-07-28 06:48:22 [ℹ]  setting availability zones to [ap-northeast-1c ap-northeast-1d ap-northeast-1a]
2021-07-28 06:48:22 [ℹ]  subnets for ap-northeast-1c - public:192.168.0.0/19 private:192.168.96.0/19
2021-07-28 06:48:22 [ℹ]  subnets for ap-northeast-1d - public:192.168.32.0/19 private:192.168.128.0/19
2021-07-28 06:48:22 [ℹ]  subnets for ap-northeast-1a - public:192.168.64.0/19 private:192.168.160.0/19
2021-07-28 06:48:22 [ℹ]  nodegroup "ng-ca18fa65" will use "" [AmazonLinux2/1.20]
2021-07-28 06:48:22 [ℹ]  using Kubernetes version 1.20
2021-07-28 06:48:22 [ℹ]  creating EKS cluster "test-cluster" in "ap-northeast-1" region with managed nodes
2021-07-28 06:48:22 [ℹ]  will create 2 separate CloudFormation stacks for cluster itself and the initial managed nodegroup
2021-07-28 06:48:22 [ℹ]  if you encounter any issues, check CloudFormation console or try 'eksctl utils describe-stacks --region=ap-northeast-1 --cluster=test-cluster'
2021-07-28 06:48:22 [ℹ]  CloudWatch logging will not be enabled for cluster "test-cluster" in "ap-northeast-1"
2021-07-28 06:48:22 [ℹ]  you can enable it with 'eksctl utils update-cluster-logging --enable-types={SPECIFY-YOUR-LOG-TYPES-HERE (e.g. all)} --region=ap-northeast-1 --cluster=test-cluster'
2021-07-28 06:48:22 [ℹ]  Kubernetes API endpoint access will use default of {publicAccess=true, privateAccess=false} for cluster "test-cluster" in "ap-northeast-1"
2021-07-28 06:48:22 [ℹ]  2 sequential tasks: { create cluster control plane "test-cluster", 3 sequential sub-tasks: { wait for control plane to become ready, 1 task: { create addons }, create managed nodegroup "ng-ca18fa65" } }
2021-07-28 06:48:22 [ℹ]  building cluster stack "eksctl-test-cluster-cluster"
2021-07-28 06:48:22 [ℹ]  deploying stack "eksctl-test-cluster-cluster"
2021-07-28 06:48:52 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-28 06:49:22 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-28 06:50:23 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-28 06:51:23 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-28 06:52:23 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-28 06:53:23 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-28 06:54:23 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-28 06:55:24 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-28 06:56:24 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-28 06:57:24 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-28 06:58:24 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-28 06:59:24 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-28 07:00:25 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-28 07:01:25 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-28 07:02:25 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-28 07:03:25 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-28 07:04:25 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-28 07:08:28 [ℹ]  building managed nodegroup stack "eksctl-test-cluster-nodegroup-ng-ca18fa65"
2021-07-28 07:08:29 [ℹ]  deploying stack "eksctl-test-cluster-nodegroup-ng-ca18fa65"
2021-07-28 07:08:29 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-ng-ca18fa65"
2021-07-28 07:08:45 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-ng-ca18fa65"
2021-07-28 07:09:02 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-ng-ca18fa65"
2021-07-28 07:09:22 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-ng-ca18fa65"
2021-07-28 07:09:39 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-ng-ca18fa65"
2021-07-28 07:09:59 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-ng-ca18fa65"
2021-07-28 07:10:18 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-ng-ca18fa65"
2021-07-28 07:10:38 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-ng-ca18fa65"
2021-07-28 07:10:55 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-ng-ca18fa65"
2021-07-28 07:11:12 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-ng-ca18fa65"
2021-07-28 07:11:29 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-ng-ca18fa65"
2021-07-28 07:11:46 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-ng-ca18fa65"
2021-07-28 07:12:04 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-ng-ca18fa65"
2021-07-28 07:12:20 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-ng-ca18fa65"
2021-07-28 07:12:36 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-ng-ca18fa65"
2021-07-28 07:12:54 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-ng-ca18fa65"
2021-07-28 07:12:54 [ℹ]  waiting for the control plane availability...
2021-07-28 07:12:54 [✔]  saved kubeconfig as "/Users/nakamasato/.kube/config"
2021-07-28 07:12:54 [ℹ]  no tasks
2021-07-28 07:12:54 [✔]  all EKS cluster resources for "test-cluster" have been created
2021-07-28 07:12:54 [ℹ]  nodegroup "ng-ca18fa65" has 2 node(s)
2021-07-28 07:12:54 [ℹ]  node "ip-192-168-63-179.ap-northeast-1.compute.internal" is ready
2021-07-28 07:12:54 [ℹ]  node "ip-192-168-95-116.ap-northeast-1.compute.internal" is ready
2021-07-28 07:12:54 [ℹ]  waiting for at least 2 node(s) to become ready in "ng-ca18fa65"
2021-07-28 07:12:54 [ℹ]  nodegroup "ng-ca18fa65" has 2 node(s)
2021-07-28 07:12:54 [ℹ]  node "ip-192-168-63-179.ap-northeast-1.compute.internal" is ready
2021-07-28 07:12:54 [ℹ]  node "ip-192-168-95-116.ap-northeast-1.compute.internal" is ready
2021-07-28 07:14:58 [ℹ]  kubectl command should work with "/Users/nakamasato/.kube/config", try 'kubectl get nodes'
2021-07-28 07:14:58 [✔]  EKS cluster "test-cluster" in "ap-northeast-1" region is ready
```

</details>

```
eksctl delete cluster --name test-cluster --region ap-northeast-1 --profile eks-setup-user
```

## with yaml file

```
eksctl create cluster -f cluster.yaml --profile eks-setup-user
```

create:

<details>

```
± eksctl create cluster -f cluster.yaml --profile eks-setup-user
2021-07-27 23:09:31 [ℹ]  eksctl version 0.58.0
2021-07-27 23:09:31 [ℹ]  using region ap-northeast-1
2021-07-27 23:09:31 [ℹ]  setting availability zones to [ap-northeast-1a ap-northeast-1c ap-northeast-1d]
2021-07-27 23:09:31 [ℹ]  subnets for ap-northeast-1a - public:192.168.0.0/19 private:192.168.96.0/19
2021-07-27 23:09:31 [ℹ]  subnets for ap-northeast-1c - public:192.168.32.0/19 private:192.168.128.0/19
2021-07-27 23:09:31 [ℹ]  subnets for ap-northeast-1d - public:192.168.64.0/19 private:192.168.160.0/19
2021-07-27 23:09:32 [ℹ]  nodegroup "nodegroup-large" will use "ami-0ccd353e1b2b0a7f0" [AmazonLinux2/1.20]
2021-07-27 23:09:32 [ℹ]  nodegroup "nodegroup-medium" will use "ami-0ccd353e1b2b0a7f0" [AmazonLinux2/1.20]
2021-07-27 23:09:32 [ℹ]  using Kubernetes version 1.20
2021-07-27 23:09:32 [ℹ]  creating EKS cluster "test-cluster" in "ap-northeast-1" region with un-managed nodes
2021-07-27 23:09:32 [ℹ]  2 nodegroups (nodegroup-large, nodegroup-medium) were included (based on the include/exclude rules)
2021-07-27 23:09:32 [ℹ]  will create a CloudFormation stack for cluster itself and 2 nodegroup stack(s)
2021-07-27 23:09:32 [ℹ]  will create a CloudFormation stack for cluster itself and 0 managed nodegroup stack(s)
2021-07-27 23:09:32 [ℹ]  if you encounter any issues, check CloudFormation console or try 'eksctl utils describe-stacks --region=ap-northeast-1 --cluster=test-cluster'
2021-07-27 23:09:32 [ℹ]  CloudWatch logging will not be enabled for cluster "test-cluster" in "ap-northeast-1"
2021-07-27 23:09:32 [ℹ]  you can enable it with 'eksctl utils update-cluster-logging --enable-types={SPECIFY-YOUR-LOG-TYPES-HERE (e.g. all)} --region=ap-northeast-1 --cluster=test-cluster'
2021-07-27 23:09:32 [ℹ]  Kubernetes API endpoint access will use default of {publicAccess=true, privateAccess=false} for cluster "test-cluster" in "ap-northeast-1"
2021-07-27 23:09:32 [ℹ]  2 sequential tasks: { create cluster control plane "test-cluster", 3 sequential sub-tasks: { wait for control plane to become ready, 1 task: { create addons }, 2 parallel sub-tasks: { create nodegroup "nodegroup-large", create nodegroup "nodegroup-medium" } } }
2021-07-27 23:09:32 [ℹ]  building cluster stack "eksctl-test-cluster-cluster"
2021-07-27 23:09:33 [ℹ]  deploying stack "eksctl-test-cluster-cluster"
2021-07-27 23:10:03 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 23:10:33 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 23:11:34 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 23:12:34 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 23:13:34 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 23:14:34 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 23:15:35 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 23:16:35 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 23:17:36 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 23:18:36 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 23:19:36 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 23:20:36 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 23:21:36 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 23:22:37 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 23:23:37 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 23:24:37 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-cluster"
2021-07-27 23:28:41 [ℹ]  building nodegroup stack "eksctl-test-cluster-nodegroup-nodegroup-large"
2021-07-27 23:28:41 [ℹ]  building nodegroup stack "eksctl-test-cluster-nodegroup-nodegroup-medium"
2021-07-27 23:28:41 [ℹ]  --nodes-min=1 was set automatically for nodegroup nodegroup-large
2021-07-27 23:28:41 [ℹ]  --nodes-max=1 was set automatically for nodegroup nodegroup-large
2021-07-27 23:28:41 [ℹ]  --nodes-min=2 was set automatically for nodegroup nodegroup-medium
2021-07-27 23:28:41 [ℹ]  --nodes-max=2 was set automatically for nodegroup nodegroup-medium
2021-07-27 23:28:41 [ℹ]  deploying stack "eksctl-test-cluster-nodegroup-nodegroup-large"
2021-07-27 23:28:41 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-large"
2021-07-27 23:28:42 [ℹ]  deploying stack "eksctl-test-cluster-nodegroup-nodegroup-medium"
2021-07-27 23:28:42 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-medium"
2021-07-27 23:28:57 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-medium"
2021-07-27 23:29:00 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-large"
2021-07-27 23:29:17 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-medium"
2021-07-27 23:29:18 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-large"
2021-07-27 23:29:33 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-medium"
2021-07-27 23:29:34 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-large"
2021-07-27 23:29:50 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-medium"
2021-07-27 23:29:54 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-large"
2021-07-27 23:30:07 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-medium"
2021-07-27 23:30:11 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-large"
2021-07-27 23:30:27 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-medium"
2021-07-27 23:30:30 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-large"
2021-07-27 23:30:44 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-medium"
2021-07-27 23:30:48 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-large"
2021-07-27 23:31:03 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-medium"
2021-07-27 23:31:05 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-large"
2021-07-27 23:31:21 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-large"
2021-07-27 23:31:22 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-medium"
2021-07-27 23:31:37 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-medium"
2021-07-27 23:31:41 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-large"
2021-07-27 23:31:53 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-medium"
2021-07-27 23:31:57 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-large"
2021-07-27 23:32:12 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-medium"
2021-07-27 23:32:12 [✖]  unexpected status "ROLLBACK_COMPLETE" while waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-medium"
2021-07-27 23:32:12 [ℹ]  fetching stack events in attempt to troubleshoot the root cause of the failure
2021-07-27 23:32:12 [!]  AWS::IAM::Role/NodeInstanceRole: DELETE_IN_PROGRESS
2021-07-27 23:32:12 [!]  AWS::EC2::SecurityGroup/SG: DELETE_IN_PROGRESS
2021-07-27 23:32:12 [!]  AWS::IAM::InstanceProfile/NodeInstanceProfile: DELETE_IN_PROGRESS
2021-07-27 23:32:12 [!]  AWS::EC2::LaunchTemplate/NodeGroupLaunchTemplate: DELETE_IN_PROGRESS
2021-07-27 23:32:12 [!]  AWS::EC2::SecurityGroupEgress/EgressInterCluster: DELETE_IN_PROGRESS
2021-07-27 23:32:12 [!]  AWS::EC2::SecurityGroupEgress/EgressInterClusterAPI: DELETE_IN_PROGRESS
2021-07-27 23:32:12 [!]  AWS::EC2::SecurityGroupIngress/IngressInterClusterCP: DELETE_IN_PROGRESS
2021-07-27 23:32:12 [✖]  AWS::AutoScaling::AutoScalingGroup/NodeGroup: CREATE_FAILED – "You must use a valid fully-formed launch template. Invalid value 'm5.medium' for InstanceType. (Service: AmazonAutoScaling; Status Code: 400; Error Code: ValidationError; Request ID: 7f85672c-22d7-4e97-9fe7-e630dc5e6ebb; Proxy: null)"
2021-07-27 23:32:12 [!]  1 error(s) occurred and cluster hasn't been created properly, you may wish to check CloudFormation console
2021-07-27 23:32:12 [ℹ]  to cleanup resources, run 'eksctl delete cluster --region=ap-northeast-1 --name=test-cluster'
2021-07-27 23:32:12 [✖]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-medium": ResourceNotReady: failed waiting for successful resource state
Error: failed to create cluster "test-cluster"
```

</details>

delete:

<details>

```
eksctl delete cluster -f cluster.yaml --profile eks-setup-user
2021-07-27 23:32:41 [ℹ]  eksctl version 0.58.0
2021-07-27 23:32:41 [ℹ]  using region ap-northeast-1
2021-07-27 23:32:41 [ℹ]  deleting EKS cluster "test-cluster"
2021-07-27 23:32:43 [ℹ]  deleted 0 Fargate profile(s)
2021-07-27 23:32:44 [ℹ]  cleaning up AWS load balancers created by Kubernetes objects of Kind Service or Ingress
2021-07-27 23:32:47 [ℹ]  2 sequential tasks: { 2 parallel sub-tasks: { delete nodegroup "nodegroup-medium", delete nodegroup "nodegroup-large" }, delete cluster control plane "test-cluster" [async] }
2021-07-27 23:32:47 [ℹ]  will delete stack "eksctl-test-cluster-nodegroup-nodegroup-large"
2021-07-27 23:32:47 [ℹ]  waiting for stack "eksctl-test-cluster-nodegroup-nodegroup-large" to get deleted
2021-07-27 23:32:47 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-large"
2021-07-27 23:32:48 [ℹ]  will delete stack "eksctl-test-cluster-nodegroup-nodegroup-medium"
2021-07-27 23:32:48 [ℹ]  waiting for stack "eksctl-test-cluster-nodegroup-nodegroup-medium" to get deleted
2021-07-27 23:32:48 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-medium"
2021-07-27 23:33:04 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-large"
2021-07-27 23:33:06 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-medium"
2021-07-27 23:33:23 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-large"
2021-07-27 23:33:42 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-large"
2021-07-27 23:34:01 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-large"
2021-07-27 23:34:17 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-large"
2021-07-27 23:34:34 [ℹ]  waiting for CloudFormation stack "eksctl-test-cluster-nodegroup-nodegroup-large"
2021-07-27 23:34:35 [ℹ]  will delete stack "eksctl-test-cluster-cluster"
2021-07-27 23:34:35 [✔]  all cluster resources were deleted
```

</details>
