# EKS-with-new-VPC

Terraform Infrastructure as Code for deploying Amazon EKS (Elastic Kubernetes Service), VPC networking with a new VPC setup on AWS. This project provides a complete infrastructure deployment from scratch with best practices and security configurations.

## ☁️ Infrastructure

![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)
![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)

## 📊 Project Status

[![Stars](https://img.shields.io/github/stars/naninanides/EKS-with-new-VPC?style=social)](https://github.com/naninanides/EKS-with-new-VPC)
[![Forks](https://img.shields.io/github/forks/naninanides/EKS-with-new-VPC?style=social)](https://github.com/naninanides/EKS-with-new-VPC/fork)
[![Issues](https://img.shields.io/github/issues/naninanides/EKS-with-new-VPC)](https://github.com/naninanides/EKS-with-new-VPC/issues)
[![License](https://img.shields.io/github/license/naninanides/EKS-with-new-VPC)](https://github.com/naninanides/EKS-with-new-VPC/blob/main/LICENSE)
[![Last Commit](https://img.shields.io/github/last-commit/naninanides/EKS-with-new-VPC)](https://github.com/naninanides/EKS-with-new-VPC/commits/main)

## 💻 Languages

- **HCL**: 100.0%

## 🚀 Installation

### Prerequisites

- AWS CLI configured with appropriate credentials
- AWS IAM permissions for the resources being created
- Terraform >= 1.0 installed
- kubectl for Kubernetes cluster management

### Setup

```# Copy and customize variables
cp terraform.tfvars.example terraform.tfvars
# Edit terraform.tfvars with your specific values
vim terraform.tfvars
```

### Deployment

```# Format and validate configuration
terraform fmt
terraform validate

# Review deployment plan
terraform plan

# Apply configuration
terraform apply

# View outputs
terraform output
```

### Post-Deployment

#### EKS Cluster Configuration
```
# Configure kubectl for EKS
aws eks update-kubeconfig --region <region> --name <cluster-name>

# Verify cluster connection
kubectl get nodes
kubectl get pods --all-namespaces
```

#### VPC and Network Information
```
# Get VPC and subnet information
terraform output vpc_id
terraform output subnet_ids
terraform output security_group_ids
```
## 📖 Usage

### Quick Start

```# 2. Initialize and deploy
terraform init
terraform apply

# 3. View outputs
terraform output
```

## ✨ Features

- 🏗️ **Infrastructure as Code** - Terraform configuration for cloud infrastructure
- ⚓ **EKS Cluster Management** - Complete Kubernetes cluster setup with managed node groups
- 🌐 **VPC Networking** - Custom VPC with subnets, gateways, and security groups
- 🔒 **Security Best Practices** - Secure security groups and IAM policies
- 🔄 **Cross Platform** - Compatible with Linux, macOS, and Windows
- 📋 **Production Ready** - Following infrastructure best practices
- 📦 **Modular Design** - Reusable Terraform modules
- ⚙️ **Configurable** - Easy customization through variables

## 📦 Resources

This Terraform configuration creates the following resources:

- `aws_eip`
- `aws_eks_cluster`
- `aws_eks_node_group`
- `aws_iam_role`
- `aws_iam_role_policy_attachment`
- `aws_internet_gateway`
- `aws_nat_gateway`
- `aws_route_table`
- `aws_route_table_association`
- `aws_security_group`
- `aws_security_group_rule`
- `aws_subnet`
- `aws_vpc`

## 📁 Project Structure

```📄 .gitignore
📄 README.md
📄 eks-cluster.tf
📄 iam.tf
📄 main.tf
📄 nodegroup.tf
📄 output.tf
📄 provider.tf
📄 security-group.tf
📄 terraform.tfvars.example
📄 variable.tf
📄 vpc.tf
```

## ⚙️ Configuration

Copy `terraform.tfvars.example` to `terraform.tfvars` and customize the values:

``````

See `variables.tf` for all available configuration options.

## 🧹 Cleanup

To destroy the created infrastructure:

``````

## 👥 Contributors

- [naninanides](https://github.com/naninanides) (1 contributions)

## 🤝 Contributing

1. Fork this repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

⭐ **Please give this repository a star if you found it helpful!**

*Generated with ❤️ by GitHub README Generator* - 2025-09-10 01:35

🧠 Smart Analysis • ☁️ Multi-Cloud Support • 🚀 Production Ready
