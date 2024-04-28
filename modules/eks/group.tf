resource "kubernetes_group" "read_only_users" {
  metadata {
    name = "read-only-users"
  }
}