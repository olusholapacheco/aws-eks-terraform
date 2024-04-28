resource "kubernetes_cluster_role" "eks_readonly_cluster_role" {
  metadata {
    name = "eks-readonly-cluster-role"
  }

  rule {
    api_groups = [""]
    resources  = ["pods"]
    verbs      = ["get", "list", "watch"]
    resource_names = [""]  # Allow access to all pods within the namespace
    namespace = "nginx-ingress"  
  }
}

