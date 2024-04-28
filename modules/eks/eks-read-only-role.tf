resource "kubernetes_role" "eks_readonly_role" {
  metadata {
    name      = "eks-readonly-role"
    namespace = "nginx-ingress"
  }

  rule {
    api_groups = [""]
    resources  = ["pods"]
    verbs      = ["get", "list", "watch"]
  }
}
