🌐 Terraform AWS Infrastructure Setup

This project demonstrates how to build AWS infrastructure using Terraform with a modular structure. It includes:

VPC creation
Public subnets across multiple Availability Zones
Backend configuration (remote state)
Variable management using tfvars
Modular Terraform design
📁 Project Structure
terraform-practice/
├── backend.tf          # Remote backend configuration
├── main.tf             # Root module
├── variable.tf         # Variable definitions
├── terraform.tfvars    # Variable values
├── networking/         # Child module
│   └── main.tf         # VPC + Subnet resources
🚀 Prerequisites
AWS Account
AWS CLI (v2) installed
Terraform installed
IAM permissions (VPC, Subnet, S3, DynamoDB if backend used)
🔧 Setup Instructions
1. Configure AWS
aws configure

Provide:

AWS Access Key
AWS Secret Key
Region (e.g., us-east-1)
Output format: json

⚠️ Use IAM Roles instead of access keys for better security.

2. Initialize Terraform
terraform init

This will:

Download provider plugins
Initialize backend (if configured)
3. Validate Configuration
terraform validate
4. Plan Infrastructure
terraform plan
5. Apply Infrastructure
terraform apply -auto-approve
