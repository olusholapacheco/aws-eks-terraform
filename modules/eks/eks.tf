module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.15.3"

  cluster_name                   = var.cluster_name
  cluster_version                = var.cluster_version
  subnet_ids                     = ["subnet-08ba09b2f0fe304ce", "subnet-0b6dcafd6c9d2e499", "subnet-042b894f03eac2ff2"]
  vpc_id                         = var.vpc_id
  cluster_endpoint_public_access = true

  eks_managed_node_group_defaults = {
    ami_type = "AL2_x86_64"
  }

  eks_managed_node_groups = {
    one = {
      instance_type = ["t3.medium"] 
      name         = "node-group-1"
      min_size     = 2
      max_size     = 3
      desired_size = 3
    }

    two = {
      name         = "node-group-2"
      instance_type = ["t3.medium"]
      min_size     = 1
      max_size     = 2
      desired_size = 1
    }
  }
}

output "eks_cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "eks_cluster_certificate_authority_data" {
  value = module.eks.cluster_certificate_authority_data
}
