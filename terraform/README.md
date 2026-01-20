# EKS Terraform DevOps Project
This repository contains a production-style AWS EKS setup built using Terraform, focusing on reliability, scalibility, and automation. 

## Architecture - Phase 1 (Networking)

# Phase 1: Networking & Phase 2: EKS Cluster

## VPC Design
- Multi-AZ VPC (10.0.0.0/16)
- Public subnets for ALB
- Private subnets for EKS nodes
- NAT gateway for secure outbound access

## EKS Design
- AWS EKS cluster (Kubernetes 1.29)
- Managed node group (2–4 t3.medium nodes)
- IRSA enabled for secure pod IAM roles
- Cluster logs enabled (api, audit, controllerManager, scheduler)

## Phase 3: Sample App Deployment
- Deployed a demo Nginx app on EKS with 2 replicas
- Exposed via LoadBalancer service
- Validated connectivity with external IP
