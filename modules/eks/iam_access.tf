resource "aws_iam_policy" "eks_readonly_policy" {
  name        = "eks-cluster-readonly-policy"
  description = "Allows read-only access to an Amazon EKS cluster"

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect   = "Allow",
        Action   = [
          "eks:ListPods",    # Added action to list pods
          "eks:DescribeCluster",
          "eks:ListClusters",
          "eks:DescribeNodegroup",
          "eks:ListNodegroups",
          "eks:DescribeAddon",
          "eks:ListAddons",
          "eks:ListTagsForResource",
          "eks:ListFargateProfiles",
          "eks:DescribeFargateProfile",
          "eks:DescribeIdentityProviderConfig",
          "eks:ListIdentityProviderConfigs",
          "eks:DescribeAddonVersions",
          "eks:ListAddonVersions",
          "eks:DescribeUpdate",
          "eks:ListUpdates",
          "eks:ListClusters",
          "eks:DescribeCluster"
        ],
        Resource = "*"
      }
    ]
  })
}


resource "aws_iam_user_policy_attachment" "eks_user_readonly_attachment" {  # This attaches the above policy
  user       = "audit"  
  policy_arn = aws_iam_policy.eks_readonly_policy.arn
}


output "policy_arn" {   # outputs the aws policy ARN
  value = aws_iam_policy.eks_readonly_policy.arn
}
