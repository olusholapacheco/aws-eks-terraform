module "eks_auth" {
  source  = "terraform-aws-modules/eks/aws//modules/aws-auth"
  version = "~> 1.32"

  manage_aws_auth_configmap = true

  aws_auth_roles = [
    {
      rolearn  = "arn:aws:iam::960509790187:role/Cluster-1-cluster-20240425114237968200000005"
      username = "Cluster-1-cluster-20240425114237968200000005" # You find this username by clicking on the Role ARN from the eks cluster, it takes you to IAM where you can see it.Since one is building via terraform
      groups   = ["system:masters"]
    },
  ]

  aws_auth_users = [
    {
      userarn  = "arn:aws:iam::960509790187:user/audit"
      username = "audit"
      groups   = ["read-only-users"]
    },
  ]

  aws_auth_accounts = [
    "960509790187"
  ]
}