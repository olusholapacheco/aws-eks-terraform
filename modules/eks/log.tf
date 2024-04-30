resource "aws_eks_cluster_update" "Cluster-1" {
  name = var.cluster_name

  logging {
    cluster_logging = {
      enabled = false
    }
  }
}