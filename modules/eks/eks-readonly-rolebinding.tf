resource "kubernetes_role_binding" "eks_readonly_role_binding" {
  metadata {
    name      = "eks-readonly-rolebinding"
    namespace = "nginx-ingress"
  }

  subject {
    kind = "User"
    name = "audit"
  }

  role_ref {
    kind     = "Role"
    name     = kubernetes_role.eks_readonly_role.metadata[0].name
    api_group = "rbac.authorization.k8s.io"
  }
}
