terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# 1. Create a Security Group to allow HTTP and SSH
resource "aws_security_group" "web_sg" {
  name        = "allow_web_traffic"
  description = "Allow inbound web and SSH traffic"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# 2. Define the Virtual Machine (EC2 Instance)
resource "aws_instance" "app_server" {
  ami             = "ami-0c7217cdde317cfec" # Ubuntu 22.04 LTS (us-east-1)
  instance_type   = "t3.micro"              # Updated to t3.micro for modern Free Tier
  security_groups = [aws_security_group.web_sg.name]

  # This script runs automatically when the VM starts
  user_data = <<-EOF
              #!/bin/bash
              sudo apt-get update -y
              sudo apt-get install docker.io -y
              sudo systemctl start docker
              sudo systemctl enable docker
              # Pulling a simple web server image for testing
              sudo docker run -d -p 80:80 nginx:latest
              EOF

  tags = {
    Name  = "UETM-Cloud-App"
    Owner = "Danish"
  }
}
