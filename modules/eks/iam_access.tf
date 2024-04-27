resource "aws_iam_policy" "eks_readonly_policy" {
  name        = "eks-cluster-readonly-policy"
  description = "Allows read-only access to an Amazon EKS cluster"

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect   = "Allow",
        Action   = [
          "eks:ListPods",
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
      },
      {
        Effect   = "Allow",
        Action   = [
          "eks:ListPods"
        ],
        Resource = "*",
        Condition = {
          StringEquals = {
            "resource/namespace" = "nginx-ingress"
          }
        }
      }
    ]
  })
}
