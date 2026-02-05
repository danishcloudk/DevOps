## 🎯 Goal
The objective of this project was to automate the provisioning of cloud infrastructure (VPC and EC2 Instance) using Terraform without incurring cloud billing costs.

## 🛠️ Tech Stack
* **OS:** Kali Linux
* **IaC Tool:** Terraform v1.x+
* **Cloud Provider:** AWS (Simulated via LocalStack)
* **Containerization:** Docker (to host LocalStack)

## 📅 Weekly Tasks Completed

### Monday: Setup & Provider Configuration
- Installed Terraform on Kali Linux.
- Configured the AWS provider to redirect API calls to `localhost:4566` (LocalStack).

### Tuesday: Resource Definition
- Wrote Terraform scripts to define a **Virtual Private Cloud (VPC)** with a `10.0.0.0/16` CIDR block.
- Defined an **EC2 Instance** resource using a dummy AMI.

### Wednesday: Execution
- Initialized the workspace using `terraform init`.
- Performed a dry run with `terraform plan`.
- Deployed the infrastructure using `terraform apply`.

### Thursday: Modification
- Updated the configuration to scale the instance from `t2.micro` to `t2.small`.
- Added new metadata tags (`Environment`, `User`) to the resources.
- Re-applied changes to observe Terraform's "Update in-place" logic.

### Friday: Resource Cleanup (Safe Destruction)
- Successfully removed all provisioned infrastructure using `terraform destroy` to ensure no orphaned resources remained.

--
## 🚀 How to Run Locally

### 1. Start the Local Cloud
Run the LocalStack container in a separate terminal:
```bash
docker run --rm -it -p 4566:4566 localstack/localstack
