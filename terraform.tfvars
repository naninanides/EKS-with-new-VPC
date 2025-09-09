# ===================================
# terraform.tfvars
# ===================================

# General Configuration
aws_region   = "ap-southeast-3"
environment  = "dev"
project_name = "testing-eks-cluster"
owner        = "DevOps Team"

# VPC Configuration
vpc_cidr             = "172.27.0.0/16"
public_subnet_cidrs  = ["172.27.1.0/24", "172.27.2.0/24"]
private_subnet_cidrs = ["172.27.3.0/24", "172.27.4.0/24"]

# EKS Cluster Configuration
cluster_name                   = "cluster-testing"
kubernetes_version             = "1.33"
endpoint_private_access        = true
endpoint_public_access         = true
endpoint_public_access_cidrs   = ["0.0.0.0/0"]

# Node Group Configuration
node_group_name    = "worker-nodes"
instance_types     = ["t3.medium"]
capacity_type      = "ON_DEMAND"
desired_capacity   = 2
max_capacity       = 4
min_capacity       = 1
disk_size          = 20
# ami_type           = "AL2_x86_64" #untuk versi kube 1.32 kebawah
ami_type           = "AL2023_x86_64_STANDARD" #untuk versi kube 1.33

#provider variable
aws_access_key = 
aws_secret_key = 
key_name       = "baihaqi-key"
# vpc_id         = "vpc-0c019b6598b3dc3ee"