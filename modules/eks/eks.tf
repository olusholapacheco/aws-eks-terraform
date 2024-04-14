module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.15.3"

  cluster_name                   = var.cluster_name
  cluster_version                = var.cluster_version
  subnet_ids                     = var.subnet_ids
  vpc_id                         = var.vpc_id
  cluster_endpoint_public_access = true

  eks_managed_node_group_defaults = {
    ami_type = "AL2_x86_64"
  }

  eks_managed_node_groups = {
    one = {
      instance_type = ["t3.medium"] 
      name         = "node-group-3"
      min_size     = 2
      max_size     = 3
      desired_size = 3
    }

    two = {
      name         = "node-group-4"
      instance_type = ["t3.medium"]
      min_size     = 1
      max_size     = 2
      desired_size = 1
    }
  }
}



























