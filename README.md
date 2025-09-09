# EKS-with-new-VPC

Terraform Infrastructure as Code for deploying Amazon EKS (Elastic Kubernetes Service) with a new VPC setup on AWS. This project provides a complete infrastructure setup from scratch with best practices and security configurations.

## ☁️ Cloud Providers

![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)
![Kubernetes](https://img.shields.io/badge/kubernetes-%23326ce5.svg?style=for-the-badge&logo=kubernetes&logoColor=white)
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
- Terraform >= 1.0
- kubectl (for cluster management)

### Setup

```# Copy and customize variables
cp terraform.tfvars.example terraform.tfvars
# Edit terraform.tfvars with your specific values
vim terraform.tfvars
```

### Deployment

```# Review deployment plan
terraform plan

# Apply configuration
terraform apply
```

### Post-Deployment

```# Verify cluster connection
kubectl get nodes
kubectl get pods --all-namespaces
```

## 📖 Usage

### Quick Start

```# 2. Deploy infrastructure
terraform apply
```

### Connect to EKS Cluster

```# Verify connection
kubectl get nodes
```

## ✨ Features

- 🏗️ **Infrastructure as Code** - Terraform configuration for cloud infrastructure
- 🌐 **Complete VPC Setup** - Creates new VPC with subnets, gateways, and routing
- ⚓ **Full EKS Deployment** - Complete EKS cluster setup from scratch
- 👥 **Managed Node Groups** - Auto-scaling worker nodes with best practices
- 🔒 **Security Best Practices** - Secure security groups and IAM roles
- 🎭 **IAM Management** - Role and policy management for EKS
- ☁️ **Multi-AZ Deployment** - High availability across multiple availability zones
- 📈 **Auto Scaling** - Automatic scaling based on workload
- 🌍 **Multi-Cloud Support** - Configuration for multiple cloud providers
- 🔄 **Cross Platform** - Compatible with Linux, macOS, and Windows
- 📋 **Production Ready** - Following infrastructure best practices
- 📦 **Modular Design** - Reusable Terraform modules
- ⚙️ **Configurable** - Easy customization through variables

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

*Generated with ❤️ by GitHub README Generator* - 2025-09-10 01:21

🧠 Smart Analysis • ☁️ Cloud Provider Detection • 🚀 Production Ready
