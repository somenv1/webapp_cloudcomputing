// Terraform skeleton (AWS example). Fill provider credentials and expand modules.
//
// REQUIRED: Install Terraform and configure AWS CLI, or set credentials via environment variables.
// This file is a starting point; do NOT run without adjusting resource names and adding modules.

terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

variable "aws_region" {
  type    = string
  default = "us-east-1"
}

output "note" {
  value = "Expand this Terraform config: create VPC, RDS (Postgres), ElastiCache (Redis), EKS or managed k8s cluster, ECR repo, IAM roles."
}
