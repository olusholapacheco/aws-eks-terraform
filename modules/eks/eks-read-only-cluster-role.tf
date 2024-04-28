resource "kubernetes_cluster_role" "eks_readonly_cluster_role" {
  metadata {
    name = "eks-readonly-cluster-role"
  }

  rule {
    api_groups = [""]
    resources  = ["pods"]
    verbs      = ["get", "list", "watch"]
    resource_names = [""]  # Allow access to all pods within the namespace
    # namespace = "nginx-ingress"  # Limit access to the nginx-ingress namespace
  }
}

resource "kubernetes_cluster_role_binding" "eks_readonly_user_binding" {
  metadata {
    name = "eks-readonly-user-binding"
  }

  role_ref {
    kind     = "ClusterRole"
    name     = kubernetes_cluster_role.eks_readonly_cluster_role.metadata[0].name
    api_group = "rbac.authorization.k8s.io"
  }

  subject {
    kind = "User"
    name = "audit"
  }
}
