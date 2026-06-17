# 📜 Week 12 — Cloud Deployment Automation

## 🎯 Project Overview
This week focused on **Infrastructure as Code (IaC)** using Terraform. The objective was to eliminate manual server configuration by writing declarative configuration files to provision, configure, and manage cloud infrastructure.

## 🛠️ Tech Stack
* **IaC Tool:** Terraform
* **Cloud Provider:** AWS
* **Compute Engine:** EC2 (t2.micro)
* **Provisioning:** Bash (`user_data`) & Docker

## 📅 Task Breakdown
* **Monday:** Installed the Terraform CLI via HashiCorp apt repositories and initialized the `aws` provider workspace.
* **Tuesday:** Authored `main.tf` to define a Virtual Machine (EC2) and configured a Security Group to allow inbound HTTP (80) and SSH (22) traffic.
* **Wednesday:** Injected a `user_data` bootstrapping script to automatically install the Docker daemon and spin up a containerized web application upon instance boot.
* **Thursday:** Executed `terraform plan` and `terraform apply` to push the state to the cloud, mapped the public IP, and validated live web access.
* **Friday:** Documented the IaC pipeline and destroyed the temporary infrastructure to maintain strict cloud cost hygiene.

## 🚀 Execution Commands
```bash
terraform init      # Initialize provider
terraform validate  # Check syntax
terraform plan      # Preview changes
terraform apply     # Build infrastructure
terraform destroy   # Tear down resources
