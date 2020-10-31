#!/bin/bash

# apply terraform to create EKS cluster
terraform init --backend-config="backend.conf"
terraform apply -var-file="naka.tfvars"

# kube config
mkdir -p ~/.kube
# terraform output kubeconfig >> ~/.kube/config
aws eks update-kubeconfig --name terraform-eks-demo --region ap-northeast-1 --profile masato

# config-map
terraform output config_map_aws_auth > config_map_aws_auth.yaml
kubectl apply -f config_map_aws_auth.yaml
