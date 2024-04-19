module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.15.3"

  cluster_name                   = var.cluster_name
  cluster_version                = var.cluster_version
  subnet_ids                     = ["subnet-0576f3a427015ceb8", "subnet-0322f6484a69c43ed","subnet-0c1d1f8d0756bccc3"]
  vpc_id                         = var.vpc_id
  cluster_endpoint_public_access = true

  eks_managed_node_group_defaults = {
    ami_type = "AL2_x86_64"
  }

  eks_managed_node_groups = {
    one = {
      instance_type = ["t3.medium"] 
      name         = "node-group-3"
      min_size     = 1
      max_size     = 2
      desired_size = 2
    }

    two = {
      instance_type = ["t3.medium"]
      name         = "node-group-4"
      min_size     = 1
      max_size     = 2
      desired_size = 1
    }
  }
}
