# EKS Terraform DevOps Project
This repository contains a production-style AWS EKS setup built using Terraform, focusing on reliability, scalibility, and automation. 

## Architecture - Phase 1 (Networking)

- Designed a multi-AZ VPC using Terraform
- Public subnets host internet-facing load balancers
- Private subnets host EKS worker nodes
- NAT Gateway enables outbound access for private workloads

