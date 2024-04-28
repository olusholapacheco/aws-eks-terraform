resource "kubernetes_cluster_role_binding" "eks_readonly_group_binding" {
  metadata {
    name = "eks-readonly-group-binding"
  }

  role_ref {
    kind     = "ClusterRole"
    name     = kubernetes_cluster_role.eks_readonly_cluster_role.metadata[0].name
    api_group = "rbac.authorization.k8s.io"
  }

  subject {
    kind    = "Group"
    name    = kubernetes_group.eks_readonly_group.metadata[0].name
  }
}

