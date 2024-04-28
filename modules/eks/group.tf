resource "kubernetes_role_binding" "read_only_users" {
  metadata {
    name      = "read-only-users"
    namespace = "nginx-ingress"
  }

  role_ref {
    name      = "view"
    kind      = "ClusterRole"
    api_group = "rbac.authorization.k8s.io"
  }

  subject {
    kind      = "Group"
    name      = "read-only-users"
    namespace = "nginx-ingress"
  }
}