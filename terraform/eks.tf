module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  # Cluster configuration
  cluster_name = "${var.project_name}-cluster"
  cluster_version = "1.29"

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  # Enable IRSA
  enable_irsa = true

  enable_cluster_creator_admin_permissions = true

  # EKS Managed Node Groups
  eks_managed_node_groups = {
    default = {
      min_size     = 1
      max_size     = 2
      desired_size = 2
      instance_types =["t3.medium"]        
    }
  }
    cluster_endpoint_public_access = true
    cluster_endpoint_private_access = true
    cluster_endpoint_public_access_cidrs = ["Your Public IP here"]
  tags = {
    Project     = var.project_name
    auto-delete = "no"
  }
}