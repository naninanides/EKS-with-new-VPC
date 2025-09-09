# ===================================
# outputs.tf
# ===================================

# EKS Cluster Outputs
output "cluster_id" {
  description = "EKS cluster ID"
  value       = aws_eks_cluster.eks_cluster.cluster_id
}

output "cluster_arn" {
  description = "EKS cluster ARN"
  value       = aws_eks_cluster.eks_cluster.arn
}

output "cluster_endpoint" {
  description = "EKS cluster endpoint"
  value       = aws_eks_cluster.eks_cluster.endpoint
}

output "cluster_version" {
  description = "EKS cluster Kubernetes version"
  value       = aws_eks_cluster.eks_cluster.version
}

output "cluster_platform_version" {
  description = "EKS cluster platform version"
  value       = aws_eks_cluster.eks_cluster.platform_version
}

output "cluster_status" {
  description = "EKS cluster status"
  value       = aws_eks_cluster.eks_cluster.status
}

output "cluster_security_group_id" {
  description = "Security group ID attached to the EKS cluster"
  value       = aws_eks_cluster.eks_cluster.vpc_config[0].cluster_security_group_id
}

output "cluster_iam_role_arn" {
  description = "IAM role ARN of the EKS cluster"
  value       = aws_eks_cluster.eks_cluster.role_arn
}

output "cluster_certificate_authority_data" {
  description = "Base64 encoded certificate data required to communicate with the cluster"
  value       = aws_eks_cluster.eks_cluster.certificate_authority[0].data
}

# Node Group Outputs
output "node_group_arn" {
  description = "EKS node group ARN"
  value       = aws_eks_node_group.eks_node_group.arn
}

output "node_group_status" {
  description = "EKS node group status"
  value       = aws_eks_node_group.eks_node_group.status
}

# VPC Outputs
# output "vpc_id" {
#   description = "VPC ID"
#   value       = aws_vpc.eks_vpc.id
# }

# output "vpc_cidr_block" {
#   description = "VPC CIDR block"
#   value       = aws_vpc.eks_vpc.cidr_block
# }

output "private_subnet_ids" {
  description = "Private subnet IDs"
  value       = aws_subnet.private_subnet[*].id
}

output "public_subnet_ids" {
  description = "Public subnet IDs"
  value       = aws_subnet.public_subnet[*].id
}

output "internet_gateway_id" {
  description = "Internet Gateway ID"
  value       = aws_internet_gateway.eks_igw.id
}

output "nat_gateway_ids" {
  description = "NAT Gateway IDs"
  value       = aws_nat_gateway.nat_gateway[*].id
}

# Security Group Outputs
output "cluster_security_group_custom_id" {
  description = "Custom security group ID for EKS cluster"
  value       = aws_security_group.eks_cluster_sg.id
}

output "node_security_group_id" {
  description = "Security group ID for EKS node group"
  value       = aws_security_group.eks_node_sg.id
}

# IAM Role Outputs
output "cluster_iam_role_name" {
  description = "IAM role name of the EKS cluster"
  value       = aws_iam_role.eks_cluster_role.name
}

output "node_iam_role_name" {
  description = "IAM role name of the EKS node group"
  value       = aws_iam_role.eks_node_role.name
}

output "node_iam_role_arn" {
  description = "IAM role ARN of the EKS node group"
  value       = aws_iam_role.eks_node_role.arn
}