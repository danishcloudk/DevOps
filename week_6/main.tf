terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region                      = "us-east-1"
  access_key                  = "test"
  secret_key                  = "test"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    ec2 = "http://localhost:4566"
  }
}

resource "aws_vpc" "uni_network" {
  cidr_block = "10.0.0.0/16"
  
  tags = {
    Name = "University-VPC"
  }
}

resource "aws_instance" "devops_vm" {
  ami           = "ami-005e54dee72cc1d00" 
  
  instance_type = "t2.small" 

  tags = {
    Name        = "Updated-Server" 
    Environment = "Dev"
    User        = "Danish-Kali"
  }
}
