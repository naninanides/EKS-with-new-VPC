# ===================================
# security-groups.tf
# ===================================

# Security Group for EKS Cluster
resource "aws_security_group" "eks_cluster_sg" {
  name_prefix = "${var.cluster_name}-cluster-sg"
  description = "Security group for EKS cluster"
  vpc_id      = aws_vpc.eks_vpc.id

  tags = merge(local.common_tags, {
    Name = "${var.cluster_name}-cluster-sg"
  })
}

# Security Group Rules for EKS Cluster
resource "aws_security_group_rule" "cluster_egress" {
  description       = "Allow all outbound traffic"
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.eks_cluster_sg.id
}

resource "aws_security_group_rule" "cluster_ingress_https" {
  description              = "Allow HTTPS traffic from node group"
  type                     = "ingress"
  from_port                = 443
  to_port                  = 443
  protocol                 = "tcp"
  source_security_group_id = aws_security_group.eks_node_sg.id
  security_group_id        = aws_security_group.eks_cluster_sg.id
}

# Security Group for EKS Node Group
resource "aws_security_group" "eks_node_sg" {
  name_prefix = "${var.cluster_name}-node-sg"
  description = "Security group for EKS node group"
  vpc_id      = aws_vpc.eks_vpc.id

  tags = merge(local.common_tags, {
    Name = "${var.cluster_name}-node-sg"
  })
}

# Security Group Rules for EKS Node Group
resource "aws_security_group_rule" "node_egress" {
  description       = "Allow all outbound traffic"
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.eks_node_sg.id
}

resource "aws_security_group_rule" "node_self_ingress" {
  description       = "Allow nodes to communicate with each other"
  type              = "ingress"
  from_port         = 0
  to_port           = 65535
  protocol          = "tcp"
  self              = true
  security_group_id = aws_security_group.eks_node_sg.id
}

resource "aws_security_group_rule" "node_cluster_ingress" {
  description              = "Allow pods to communicate with the cluster API Server"
  type                     = "ingress"
  from_port                = 1025
  to_port                  = 65535
  protocol                 = "tcp"
  source_security_group_id = aws_security_group.eks_cluster_sg.id
  security_group_id        = aws_security_group.eks_node_sg.id
}

resource "aws_security_group_rule" "node_cluster_ingress_https" {
  description              = "Allow cluster to communicate with node kubelet"
  type                     = "ingress"
  from_port                = 443
  to_port                  = 443
  protocol                 = "tcp"
  source_security_group_id = aws_security_group.eks_cluster_sg.id
  security_group_id        = aws_security_group.eks_node_sg.id
}