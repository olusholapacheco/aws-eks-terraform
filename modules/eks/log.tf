resource "aws_eks_cluster" "Cluster-1" {
  name     = var.cluster_name
  role_arn = "arn:aws:iam::960509790187:role/Cluster-1-cluster-20240425114237968200000005"

  vpc_config {
    subnet_ids = ["subnet-08ba09b2f0fe304ce", "subnet-0b6dcafd6c9d2e499", "subnet-042b894f03eac2ff2"]
  }

  logging {
    cluster_logging {
      enabled = false
    }
  }
}