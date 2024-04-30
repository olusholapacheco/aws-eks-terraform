resource "aws_eks_cluster" "Cluster-1" {
  name     = var.cluster_name
  role_arn = "arn:aws:iam::960509790187:role/Cluster-1-cluster-20240425114237968200000005"

  cluster_logging {
    enabled = false
  }
}